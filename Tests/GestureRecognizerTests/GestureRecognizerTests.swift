import XCTest
@testable import GestureRecognizer

final class GestureRecognizerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(GestureRecognizer().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
