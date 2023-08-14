//
//  ObjcTests.swift
//  
//
//  Created by Alexander Kosmachyov on 14.08.23.
//

import XCTest
@testable import ObjFibonacci

final class ObjcTests: XCTestCase {
    func testExample() throws {
        let withPrint = false
        let calculator = ObjFibonacci(printInvocation: withPrint)!
        let result = calculator.cppFibonacci(7)
        XCTAssertEqual(result, 21, "Invalid calculation")
    }
}
