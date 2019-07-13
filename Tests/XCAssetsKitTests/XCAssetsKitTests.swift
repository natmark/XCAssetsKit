import XCTest
@testable import XCAssetsKit

final class XCAssetsKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(XCAssetsKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
