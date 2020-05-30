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

    func test_SecondaryRazeColorsAreEqual() {
        let color = RazeCore.colorFromHexString("#fcfffd")
        XCTAssertEqual(color, RazeCore.secondaryRazeColor)
    }

    static var allTests = [
        ("test_ColorRedEqual", test_ColorRedEqual),
        ("test_RazeColorsAreEqual", test_RazeColorsAreEqual),
        ("test_SecondaryRazeColorsAreEqual", test_SecondaryRazeColorsAreEqual),
    ]
}
