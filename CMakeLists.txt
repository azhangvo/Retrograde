cmake_minimum_required(VERSION 3.23 FATAL_ERROR)
set(CMAKE_CUDA_ARCHITECTURES 86)
set(CMAKE_CUDA_COMPILER "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.8/bin/nvcc.exe")
project (Retrograde CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(Retrograde main.cu src/Frame.cu src/Frame.cuh src/FrameProvider.cu src/FrameProvider.cuh)

set_target_properties(Retrograde PROPERTIES
                      CUDA_SEPARABLE_COMPILATION ON)