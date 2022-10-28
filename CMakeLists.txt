cmake_minimum_required(VERSION 3.23 FATAL_ERROR)

set(CMAKE_CUDA_ARCHITECTURES 86)
set(CMAKE_CUDA_COMPILER "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.8/bin/nvcc.exe")
set(OpenCV_DIR "C:/Program Files/OpenCV/build")

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

project(Retrograde CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(Retrograde main.cu src/Frame.cu src/Frame.cuh src/FrameProvider.cu src/FrameProvider.cuh src/VideoProvider/VideoProvider.cu src/VideoProvider/VideoProvider.cuh)

target_link_libraries(Retrograde ${OpenCV_LIBS})

set_target_properties(Retrograde PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)