//
//  swiftCLITool.swift
//  
//
//  Created by Alexander Kosmachyov on 10.08.23.
//

import Fibonacci

@main
struct MyProgram {
    public static func main() {
        let _ = FibonacciCalculator(printInvocation: true)
            .fibonacci(5)
    }
}
