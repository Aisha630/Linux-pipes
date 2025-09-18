#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <unistd.h>

#define LOTS 100000000
static inline uint64_t read_cntvct(void) {
    uint64_t v;
    __asm__ volatile("isb" ::: "memory");
    __asm__ volatile("mrs %0, cntvct_el0" : "=r"(v));
    __asm__ volatile("isb" ::: "memory");
    return v;
}


static inline uint32_t read_cntfrq(void) {
    uint32_t f;
    __asm__ volatile("mrs %0, cntfrq_el0" : "=r"(f)); // ticks per second
    return f;
}

int main(void) {
    uint32_t freq = read_cntfrq();
    // for (int i = 0; i < 100000; i++) (void)read_cntvct(); // warm up the cache
    uint64_t start = read_cntvct();
    // sleep(3);

    for (int i = 0; i < LOTS; i++) {
        uint64_t dummy = read_cntvct();
    }
    uint64_t ticks = read_cntvct() - start;
    double seconds = (double)ticks / (double)freq;

    printf("Frequency: %" PRIu32 " Hz\n", freq);
    printf("Ticks: %" PRIu64 "\n", ticks);
    // printf("Elapsed: %.6f seconds\n", seconds);
    printf("Average time per read: %.5f ns\n", (seconds * 1e9) / 100000000);
    return 0;
}
