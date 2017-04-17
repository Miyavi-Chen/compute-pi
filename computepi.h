#include <stdio.h>

typedef struct thread_arg {
    size_t N;
    double sum;
    unsigned int myseed;
} THREAD_ARG;

double compute_pi_baseline(size_t N);
double compute_pi_openmp(size_t N, int threads);
double compute_pi_avx(size_t N);
double compute_pi_avx_unroll(size_t N);
double compute_pi_montecarlo(size_t N);
double compute_pi_montecarlo_pthread(size_t N, int threads);
