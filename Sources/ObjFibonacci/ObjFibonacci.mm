//
//  Fibonacci.m
//  
//
//  Created by Alexander Kosmachyov on 14.08.23.
//

#import "ObjFibonacci.h"
#import "Fibonacci.h"

@implementation ObjFibonacci

- (instancetype)initWithPrintInvocation:(BOOL)printInvocation {
    self = [super init];
    if (self) {
        self.printInvocation = printInvocation;
    }
    return self;
}

- (double)fibonacci:(double)value {
    // Print the value if applicable.
    if (self.printInvocation) {
        NSLog(@"[Objective-C] fibonacci(%.0f)", value);
    }
    
    // Handle the base case of the recursion.
    if (value <= 1.0) {
        return 1.0;
    }
    
    // Recursive call
    return [self fibonacci:value - 1.0] + [self fibonacci:value - 2.0];
}

- (double)cppFibonacci:(double)value {
    FibonacciCalculatorCplusplus instance(_printInvocation);
    return instance.fibonacci(value);
}

@end

