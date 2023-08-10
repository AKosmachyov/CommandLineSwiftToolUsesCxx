import XCTest
@testable import Fibonacci

final class FibonacciTests: XCTestCase {
    func testExample() throws {
        let withPrint = false
        let cxxCalculator = FibonacciCalculatorCplusplus(withPrint)
        let result = cxxCalculator.fibonacci(7)
        XCTAssertEqual(result, 21, "Invalid calculation")
    }
}
