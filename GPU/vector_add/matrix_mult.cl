__kernel void vector_add(__global const float *x,
                        __global const float *y,
                        __global const int N,
                        __global float *restrict z)
{
    int id = get_global_id(0);
    i = id[0];
    j = id[1];

    float res = 0;
    for (unsigned int k = 0; k < N; ++k) {
        res += x[i, k] * y[k][j];
    }
    z[i][j] = res;
}