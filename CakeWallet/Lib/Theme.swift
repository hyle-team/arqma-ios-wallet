import UIKit

enum Theme: String {
    case def, night
    
    static var current: Theme {
        if
            let rawValue = UserDefaults.standard.string(forKey: Configurations.DefaultsKeys.currentTheme),
            let theme = Theme(rawValue: rawValue) {
            return theme
        }
        
        return .def
    }
    
    var bar: BarColorScheme {
        let darkened = UIColor.arqmaBlack80.darkerColor(percent: 0.3)
        return BarColorScheme(barTint: darkened, tint: .arqmaBlue, text: .white)
    }
    
    var container: ContainerColorScheme {
        switch self {
        case .def:
            return ContainerColorScheme(background: .arqmaBlack80)
        case .night:
            return ContainerColorScheme(background: .wildDarkBlue)
        }
    }
    
    var primaryButton: ButtonColorScheme {
        switch self {
        case .def:
            return ButtonColorScheme(background: .arqmaBlue, text: .white, shadow: .arqmaBlueDark)
        case .night:
            return ButtonColorScheme(background: .whiteSmoke, text: .arqmaBlue, shadow: .arqmaBlueDark)
        }
    }
    
    var secondaryButton: ButtonColorScheme {
        switch self {
        case .def:
            return ButtonColorScheme(background: .wildDarkBlue, text: .white, shadow: .wildDarkBlueShadow)
        case .night:
            return ButtonColorScheme(background: .whiteSmoke, text: .wildDarkBlue, shadow: .arqmaBlueDark)
        }
    }
    
    var tertiaryButton: ButtonColorScheme {
        return ButtonColorScheme(background: .arqmaBlack60, text: .white, shadow: .arqmaBlack50)
    }
    
    var pin: PinIndicatorScheme {
        return PinIndicatorScheme(background: .arqmaBlack40, value: .arqmaBlue, shadow: .arqmaBlack40)
    }
    
    var pinKey: PinKeyScheme {
        return PinKeyScheme(background: .wildDarkBlue, text: .white, shadow: .wildDarkBlueShadow)
    }
    
    var pinKeyReversed: PinKeyScheme {
        return PinKeyScheme(background: .arqmaBlack40, text: .white, shadow: .arqmaBlack40)
    }
    
    var card: CardScheme {
        return CardScheme(background: .arqmaBlack60, shadow: .arqmaBlack90)
    }
    
    var text: UIColor {
        switch self {
        case .def:
            return .white
        case .night:
            return .whiteSmoke
        }
    }
    
    var lightText: UIColor {
        switch self {
        case .def:
            return .wildDarkBlue
        case .night:
            return .whiteSmoke
        }
    }
    
    var progressBar: ProgressBarScheme {
        return ProgressBarScheme(value: .blueArq, background: .arqmaBlack40)
    }
    
    var tableCell: CellColorScheme {
        let lighter = UIColor.arqmaBlack60.lighterColor(percent: 0.3)
        return CellColorScheme(background: .arqmaBlack60, selected: lighter, text: .white, tint: .arqmaBlue)
    }
    
    var labelField: LabelFieldScheme {
        return LabelFieldScheme(textColor: .white, titleColor: .wildDarkBlue, selectedTitleColor: .white)
    }
}
