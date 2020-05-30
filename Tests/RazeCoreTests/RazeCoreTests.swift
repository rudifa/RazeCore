@testable import RazeCore
import XCTest

final class RazeCoreTests: XCTestCase {
    func test_ColorRedEqual() {
        let color = RazeCore.colorFromHexString("#FF0000")
        XCTAssertEqual(color, .red)
    }

    static var allTests = [
        ("test_ColorRedEqual", test_ColorRedEqual),
    ]
}
