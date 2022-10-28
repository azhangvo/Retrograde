#include <iostream>
#include "src/VideoProvider/VideoProvider.cuh"
#include <string>

int main() {
    std::cout << "Hello, World!" << std::endl;

    VideoProvider vp(std::string("hello"));

    vp.hasNextFrame();
    Frame frame = vp.nextFrame();
    cv::Mat mat = frame.getMat();

    printf("Dims: %d\n", mat.size.dims());
    for(int i = 0; i < mat.size.dims(); i++)
        printf("Dim %d: %d | ", i, mat.size[i]);

    return 0;
}
