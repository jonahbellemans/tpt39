__kernel void vector_add(__global const float *x, 
                        __global const float *y, 
                        __global float *restrict z)
{
    int i = get_global_id(0);
    z[i] = x[i] + y[i];
}

