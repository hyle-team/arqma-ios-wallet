import Foundation

public enum WalletType {
    case arqma, bitcoin
    
    public var currency: CryptoCurrency {
        switch self {
        case .arqma:
            return .arqma
        case .bitcoin:
            return .bitcoin
        }
    }
    
    public func string() -> String {
        switch self {
        case .bitcoin:
            return "Bitcoin"
        case .arqma:
            return "Arqma"
        }
    }
}
