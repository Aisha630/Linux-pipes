#include <stdio.h>
#include <stdint.h>
#include <time.h>

#define LOTS 10000000

static inline uint64_t ns_since(const struct timespec *t0,
                                const struct timespec *t1) {
    // compute t1 - t0 with normalization
    time_t s = t1->tv_sec - t0->tv_sec;
    long   n = t1->tv_nsec - t0->tv_nsec;
    if (n < 0) { s -= 1; n += 1000000000L; }   // borrow 1s
    return (uint64_t)s * 1000000000ULL + (uint64_t)n;
}

double measure_clock_gettime(void) {
    struct timespec t0, t1, trash;

    // warm up
    // for (int i = 0; i < 10000; i++) clock_gettime(CLOCK_MONOTONIC_RAW, &trash);

   // calculate baseline for loop overhead
    uint64_t start = clock_gettime_nsec_np(CLOCK_MONOTONIC_RAW);
    for (int i = 0; i < LOTS; i++)
    ;
    uint64_t end = clock_gettime_nsec_np(CLOCK_MONOTONIC_RAW);
    uint64_t baseline_ns = end - start;
    printf("Baseline loop overhead: %llu ns\n", (unsigned long long)baseline_ns);
    

    uint64_t start_ns = clock_gettime_nsec_np(CLOCK_MONOTONIC_RAW);
    for (int i = 0; i < LOTS; i++)   {
        clock_gettime_nsec_np(CLOCK_MONOTONIC_RAW);
    };
    uint64_t end_ns = clock_gettime_nsec_np(CLOCK_MONOTONIC_RAW);

    uint64_t elapsed_ns = end_ns - start_ns;

    double avg =  (double)elapsed_ns / (double)LOTS;
    double avg_baseline = (double)(elapsed_ns - baseline_ns) / (double)LOTS;
    printf("Total elapsed: %llu ns (%.7f ns per call, baseline-corrected %.7f ns per call)\n",
           (unsigned long long)elapsed_ns, avg, avg_baseline);
    return avg;
}

int main(void) {
    double avg_ns = measure_clock_gettime();
    printf("Average cost of clock_gettime(CLOCK_MONOTONIC_RAW): %.7f ns (over %d calls)\n",
           avg_ns, LOTS);
    return 0;
}
