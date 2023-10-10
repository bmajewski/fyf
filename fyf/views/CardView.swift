import SwiftUI


struct CardView: View {
    var card: Card
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            if let c = card as? PlayingCard {
                VStack{
                    HStack{
                        IndexView(card: c, corner: .upperLeft)
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        IndexView(card: c, corner: .lowerRight)
                    }
                }
            }
        }.frame(width: 250, height: 350)
    }
}

struct IndexView: View {
    var card: Card
    var corner: Corner
    
    var body: some View {
        if let c = card as? PlayingCard {
            VStack {
                Text(c.rank.display())
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .foregroundColor(c.suit.color())
                Image(systemName: c.suit.symbol())
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .foregroundColor(c.suit.color())
            }
            .rotationEffect( rotationAngle())
            .offset(x: corner.offsetX(), y: corner.offsetY())
        }
    }
    
    func rotationAngle() -> Angle {
        if corner == .lowerLeft || corner == .lowerRight {
            return Angle(degrees: 180)
        }
        
        return .zero
    }
}

#Preview {
    CardView(card: PlayingCard(faceUp: true, rank: .ace, suit: .spade))
}

#Preview {
    CardView(card: PlayingCard(faceUp: true, rank: .seven, suit: .heart))

}

