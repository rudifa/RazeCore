
import UIKit

public class RazeCore {
    /// Convert a 6 digit hex string into a UIColor instance
    /// - Parameters:
    ///   - hexString: 6 digit hex string (prefix # optional)
    ///   - alpha: opacity (0.0...1.0)
    /// - Returns: UIColor
    internal class func colorFromHexString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
        let r, g, b: CGFloat
        let offset = hexString.hasPrefix("#") ? 1 : 0
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xFF0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00FF00) >> 8) / 255
            b = CGFloat((hexNumber & 0x0000FF) >> 0) / 255
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }
        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }

    /// RW green color
    public static var razeColor: UIColor {
        return self.colorFromHexString("006736")
    }
}
