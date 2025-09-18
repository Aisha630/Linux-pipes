#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/time.h>
#include <inttypes.h>
#include <limits.h>
#include <math.h>

static int64_t timeval_diff_us(const struct timeval *after,
                               const struct timeval *before) {
    int64_t diff_sec  = (int64_t)after->tv_sec - (int64_t)before->tv_sec;
    int64_t diff_usec = (int64_t)after->tv_usec - (int64_t)before->tv_usec;
    return diff_sec * 1000000LL + diff_usec;
}

int main(void) {
    struct timeval t_start, t_end;
    gettimeofday(&t_start, NULL);
    sleep(1);
    gettimeofday(&t_end, NULL);

    int64_t elapsed_us = timeval_diff_us(&t_end, &t_start);
    double elapsed_s = (double)elapsed_us / 1e6;

    printf("Elapsed: %" PRId64 " µs (%.6f s)\n", elapsed_us, elapsed_s);


    // comment the below part if you do not want sampling
    const int samples = 100;
    int64_t min_us = INT64_MAX;
    int64_t max_us = 0;
    double sum_s = 0.0;
    double sumsq_s = 0.0;
    double invsum_s = 0.0;  // for harmonic mean
    for (int i = 0; i < samples; i++) {
        gettimeofday(&t_start, NULL);
        sleep(1);
        gettimeofday(&t_end, NULL);

        int64_t sample_us = timeval_diff_us(&t_end, &t_start);
        if (sample_us < min_us) min_us = sample_us;
        if (sample_us > max_us) max_us = sample_us;

        double sample_s = (double)sample_us / 1e6;
        sum_s    += sample_s;
        sumsq_s  += sample_s * sample_s;
        invsum_s += 1.0 / sample_s;  // sample_s > 0 for sleep(1)
    }
    double mean_s = sum_s / samples;
    double variance_s = 0;
    if (samples > 1) {
        variance_s = (sumsq_s - (sum_s * sum_s) / samples) / (samples - 1);
        if (variance_s < 0.0) variance_s = 0.0; 
    }
    double stddev_s = sqrt(variance_s);
    double hmean_s = samples / invsum_s;

    printf("\nStatistics over %d samples:\n", samples);
    printf("  min:    %" PRId64 " µs (%.6f s)\n", min_us, (double)min_us / 1e6);
    printf("  max:    %" PRId64 " µs (%.6f s)\n", max_us, (double)max_us / 1e6);
    printf("  mean (arithmetic): %.6f s\n", mean_s);
    printf("  mean (harmonic):   %.6f s\n", hmean_s);
    printf("  stddev:            %.6f s\n", stddev_s);

    return 0;
}
