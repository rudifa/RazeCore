@testable import RazeCore
import XCTest

final class RazeCoreTests: XCTestCase {
    func test_ColorRedEqual() {
        let color = RazeCore.colorFromHexString("#FF0000")
        XCTAssertEqual(color, .red)
    }

    func test_RazeColorsAreEqual() {
        let color = RazeCore.colorFromHexString("#006736")
        XCTAssertEqual(color, RazeCore.razeColor)
    }

    static var allTests = [
        ("test_ColorRedEqual", test_ColorRedEqual),
        ("test_RazeColorsAreEqual", test_RazeColorsAreEqual),
    ]
}
