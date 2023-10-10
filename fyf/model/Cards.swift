import Foundation


protocol Card {
    var faceUp: Bool { get set }
}

struct PlayingCard: Card {
    var faceUp: Bool
    var rank: Rank
    var suit: Suit
}

struct Joker: Card {
    var faceUp: Bool
}

enum Corner {
    case upperLeft, upperRight, lowerLeft, lowerRight
    
    func offsetX() -> CGFloat {
        switch self {
        case .upperLeft, .lowerLeft: return 10
        case .upperRight, .lowerRight: return -10
        }
    }
    
    func offsetY() -> CGFloat {
        switch self {
        case .upperLeft, .upperRight: return 10
        case .lowerLeft, .lowerRight: return -10
        }
    }
}
