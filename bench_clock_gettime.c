// bench_clock_gettime.c (macOS)
#define _DARWIN_C_SOURCE
#include <time.h>
#include <stdio.h>
#include <inttypes.h>

int main(void){
  // warmup
  for (int i=0;i<100000;i++) (void)clock_gettime_nsec_np(CLOCK_UPTIME_RAW);

  const int N = 1000000;
  uint64_t min_ns = (uint64_t)-1, sum_ns = 0;

  for (int i=0;i<N;i++){
    uint64_t a = clock_gettime_nsec_np(CLOCK_UPTIME_RAW);
    uint64_t b = clock_gettime_nsec_np(CLOCK_UPTIME_RAW);
    uint64_t d = b - a;
    if (d < min_ns) min_ns = d;
    sum_ns += d;
  }
  printf("clock_gettime_nsec_np(CLOCK_UPTIME_RAW): min=%" PRIu64 " ns  avg=%.2f ns\n",
         min_ns, (double)sum_ns/N);
}

