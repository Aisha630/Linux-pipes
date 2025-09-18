#define _GNU_SOURCE
#include <time.h>
#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>
#include <unistd.h>
#include <limits.h>
#include <math.h>

static int64_t timespec_diff_ns(const struct timespec *after,
                                const struct timespec *before) {
    int64_t diff_sec  = (int64_t)after->tv_sec  - (int64_t)before->tv_sec;
    int64_t diff_nsec = (int64_t)after->tv_nsec - (int64_t)before->tv_nsec;
    return diff_sec * 1000000000LL + diff_nsec;
}

int main(void) {
    struct timespec t_start, t_end;

    clock_gettime(CLOCK_MONOTONIC_RAW, &t_start);
    sleep(1);
    clock_gettime(CLOCK_MONOTONIC_RAW, &t_end);

    int64_t elapsed_ns = timespec_diff_ns(&t_end, &t_start);
    double elapsed_s = (double)elapsed_ns / 1e9;

    printf("Elapsed for single command: %" PRId64 " ns (%.9f s)\n",
           elapsed_ns, elapsed_s);

    
    // comment the below part if you do not want sampling

    const int samples = 100;
    int64_t min_ns = INT64_MAX;
    int64_t max_ns = 0;

    double sum_s = 0.0;
    double sumsq_s = 0.0;   // for stddev
    double invsum_s = 0.0;  // for harmonic mean

    for (int i = 0; i < samples; i++) {
        clock_gettime(CLOCK_MONOTONIC_RAW, &t_start);
        sleep(1);
        clock_gettime(CLOCK_MONOTONIC_RAW, &t_end);

        int64_t sample_ns = timespec_diff_ns(&t_end, &t_start);
        if (sample_ns < min_ns) min_ns = sample_ns;
        if (sample_ns > max_ns) max_ns = sample_ns;

        double sample_s = (double)sample_ns / 1e9;
        sum_s    += sample_s;
        sumsq_s  += sample_s * sample_s;
        invsum_s += 1.0 / sample_s;  // sample_s > 0 for sleep(1)
    }

    double mean_s = sum_s / samples;

    double variance_s = 0.0;
    if (samples > 1) {
        variance_s = (sumsq_s - (sum_s * sum_s) / samples) / (samples - 1);
        if (variance_s < 0.0) variance_s = 0.0; 
    }
    double stddev_s = sqrt(variance_s);

    double hmean_s = samples / invsum_s;

    printf("\nStatistics over %d samples:\n", samples);
    printf("  min:    %" PRId64 " ns (%.9f s)\n", min_ns, (double)min_ns / 1e9);
    printf("  max:    %" PRId64 " ns (%.9f s)\n", max_ns, (double)max_ns / 1e9);
    printf("  mean (arithmetic): %.9f s\n", mean_s);
    printf("  mean (harmonic):   %.9f s\n", hmean_s);
    printf("  stddev:            %.9f s\n", stddev_s);

    return 0;
}
