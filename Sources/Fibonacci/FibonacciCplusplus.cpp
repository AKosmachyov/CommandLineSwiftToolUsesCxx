//
//  FibonacciCplusplus.cpp
//  
//
//  Created by Alexander Kosmachyov on 10.08.23.
//

#include "FibonacciCplusplus.hpp"
//#include <Fibonacci/Fibonacci-Swift.h>
#include <iostream>

FibonacciCalculatorCplusplus::FibonacciCalculatorCplusplus(bool printInvocation) : printInvocation(printInvocation) {}

double FibonacciCalculatorCplusplus::fibonacci(double value) const {
    // Print the value if applicable.
    if (printInvocation)
        std::cout << "[c++] fibonacci(" << value << ")\n";
    
    // Handle the base case of the recursion.
    if (value <= 1.0)
        return 1.0;
    
    return fibonacci(value - 1) + fibonacci(value - 2);
    // Create the Swift `FibonacciCalculator` structure and invoke its `fibonacci` method.
//    auto swiftCalculator = Fibonacci::FibonacciCalculator::init(printInvocation);
//    return swiftCalculator.fibonacci(value - 1.0) + swiftCalculator.fibonacci(value - 2.0);
}
