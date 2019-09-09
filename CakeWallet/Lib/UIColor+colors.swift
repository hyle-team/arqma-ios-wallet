import UIKit

extension UIColor {
    static var wildDarkBlue: UIColor {
        return UIColor(red: 155, green: 172, blue: 197)
    }
    
    static var wildDarkBlueShadow: UIColor {
        return UIColor(hex: 0x9BACC5)
    }
    
    static var whiteSmoke: UIColor {
        return UIColor(red: 243, green: 245, blue: 248)
    }
    
    static var vividBlue: UIColor {
        return UIColor(red: 0, green: 162, blue: 235)
    }
    
    static var spaceViolet: UIColor {
        return UIColor(red: 34, green: 40, blue: 75)
    }
    
    static var blueBolt: UIColor {
        return UIColor(red: 0, green: 185, blue: 252)
    }
    
    static var blueArq: UIColor {
        return UIColor(red: 39, green: 57, blue: 206)
    }
    
    static var lightBlueGrey: UIColor {
        return UIColor(red: 224, green: 233, blue: 246)
    }
    
    static var arqmaBlue: UIColor {
        return UIColor(hex: 0x080085)
    }
    
    static var arqmaBlueDark: UIColor {
        return UIColor(hex: 0x00006E)
    }
    
    static var arqmaBlack90: UIColor {
        return UIColor(hex: 0x0A0A0A)
    }
    
    static var arqmaBlack80: UIColor {
        return UIColor(hex: 0x252525)
    }

    static var arqmaBlack60: UIColor {
        return UIColor(hex: 0x313131)
    }
    
    static var arqmaBlack50: UIColor {
        return UIColor.arqmaBlack60.lighterColor(percent: 0.35)
    }
    
    static var arqmaBlack40: UIColor {
        return UIColor.arqmaBlack50.lighterColor(percent: 0.2)
    }
}
