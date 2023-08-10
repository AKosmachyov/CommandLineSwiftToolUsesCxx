//
//  FibonacciCplusplus.hpp
//  
//
//  Created by Alexander Kosmachyov on 10.08.23.
//

#pragma once

class FibonacciCalculatorCplusplus {
public:
    FibonacciCalculatorCplusplus(bool printInvocation);
    double fibonacci(double value) const;
private:
    bool printInvocation;
};
