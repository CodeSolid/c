// app/app.cpp

#include <iostream>
#include <lib.h>

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cout << "Usage: " << argv[0] 
            << " number" <<std::endl;
        return 1;
    }
    int input = std::stoi(argv[1]);
    std::cout << input << "! = " 
        << std::to_string(Factorial(input)) << std::endl;
    return 0;
}