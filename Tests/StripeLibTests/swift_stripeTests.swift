import XCTest
@testable import swift_stripe

class swift_stripeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_stripe().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
