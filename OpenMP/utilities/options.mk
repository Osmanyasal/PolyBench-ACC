# CODE GENERATION OPTIONS
########################################

# Default OpenACC Target is OpenCL
# TARGET_LANG = OPENCL

# Uncomment if you want CUDA
# TARGET_LANG = CUDA

# COMPILER OPTIONS -- ACCELERATOR
########################################

# # Accelerator Compiler
# ACC = hmpp

# # Accelerator Compiler flags
# ACCFLAGS = --codelet-required --openacc-target=$(TARGET_LANG)

# COMPILER OPTIONS -- HOST
########################################

# Compiler
CC = g++ 

# Compiler flags
CFLAGS = -O2 -fno-tree-vectorize -mno-avx #-DPOLYBENCH_DUMP_ARRAYS
