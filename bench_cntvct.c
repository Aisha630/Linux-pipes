// bench_cntvct.c (macOS/arm64; may require permissions and may be blocked on newer OS)
// clang -O2 bench_cntvct.c -o bench_cntvct
#include <stdint.h>
#include <stdio.h>
#include <inttypes.h>
#include <time.h>

static inline uint64_t read_cntvct(void){
  uint64_t v;
  __asm__ volatile("isb" ::: "memory");
  __asm__ volatile("mrs %0, cntvct_el0" : "=r"(v)); // 64-bit counter
  __asm__ volatile("isb" ::: "memory");
  return v;
}

static inline uint64_t now_ns_raw(void){
  // Apple-preferred user clock (monotonic uptime, ns)
  return clock_gettime_nsec_np(CLOCK_UPTIME_RAW);
}

int main(void){
  // Calibrate CNTVCT ticks to seconds over ~0.5s using the Apple clock
  uint64_t t0 = now_ns_raw();
  uint64_t c0 = read_cntvct();
  struct timespec req = {.tv_sec=0,.tv_nsec=500000000};
  nanosleep(&req, NULL);
  uint64_t t1 = now_ns_raw();
  uint64_t c1 = read_cntvct();

  double secs = (t1 - t0) / 1e9;
  double hz   = (double)(c1 - c0) / secs;
  printf("Estimated CNTVCT frequency: %.0f Hz\n", hz);

  // Now benchmark: read→read overhead in ticks
  const int N = 1000000;
  uint64_t min_ticks = (uint64_t)-1, sum_ticks = 0;
  for(int i=0;i<N;i++){
    uint64_t a = read_cntvct();
    uint64_t b = read_cntvct();
    uint64_t d = b - a;
    if (d < min_ticks) min_ticks = d;
    sum_ticks += d;
  }
  double avg_ticks = (double)sum_ticks/N;
  printf("CNTVCT read cost: min=%.6f ticks  avg=%.1f ticks  (~min=%.6f ns)\n",
         (double)min_ticks, avg_ticks, (double)min_ticks*1e9/hz);
}

