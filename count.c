#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <unistd.h>

// For ARM64 generic timer
static inline uint64_t read_cntvct(void) {
    uint64_t v;
    // asm volatile("isb" ::: "memory");
    // asm volatile("mrs %0, cntvct_el0" : "=r"(v));
    // asm volatile("isb" ::: "memory");
    asm volatile ("mrs %0, cntvct_el0; " : "=r"(v) :: "memory");
    return v;
}

static inline uint32_t read_cntfrq(void) {
    uint32_t f;
    __asm__ volatile("mrs %0, cntfrq_el0" : "=r"(f));
    return f;
}

int main(void) {
    uint32_t freq = read_cntfrq();
    uint64_t start = read_cntvct();
    sleep(3);
    uint64_t end = read_cntvct();
    uint64_t ticks = end - start;
    double seconds = (double)ticks / (double)freq;

    printf("Frequency: %" PRIu32 " Hz\n", freq);
    printf("Ticks: %" PRIu64 "\n", ticks);
    printf("Elapsed: %.6f seconds\n", seconds);
    return 0;
}
