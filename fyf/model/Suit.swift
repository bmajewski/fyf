import Foundation
import SwiftUI

enum Suit {
    case heart, diamond, spade, club
    
    func color() -> Color {
        switch self {
        case .heart, .diamond: return .red
        case .spade, .club: return .black
        }
    }
    
    func symbol() -> String {
        switch self {
        case .heart: "suit.heart.fill"
        case .diamond: "suit.diamond.fill"
        case .club: "suit.club.fill"
        case .spade:"suit.spade.fill"
        }
    }
}
