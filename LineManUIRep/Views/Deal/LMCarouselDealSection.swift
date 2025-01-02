//
//  LMCarouselDealSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 2/1/2568 BE.
//

import SwiftUI

struct LMCarouselDealSection: View {
    private let cards: [LMDealCard] = [
        LMDealCard(size: .big, title: "Big Card", subTitle: "Subtitle"),
        LMDealCard(size: .big, title: "Big Card", subTitle: "Subtitle"),
        LMDealCard(size: .big, title: "Big Card", subTitle: "Subtitle"),
    ]
    private let cardWidth: CGFloat = UIScreen.main.bounds.width - 32
    
    @State var tempCards: [[LMDealCard]] = []
    @State var scrollPosition: Int?
    
    var body: some View {
        let displayCards = tempCards.flatMap { $0 }
        let widthDifference = UIScreen.main.bounds.width - cardWidth
        VStack {
            // Carousel
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<displayCards.count, id: \.self) { index in
                        displayCards[index]
                            .frame(width: cardWidth)
                    }
                }
                .scrollTargetLayout()
            }
            .contentMargins(widthDifference/2, for: .scrollContent)
            .scrollTargetBehavior(.viewAligned)
            .scrollPosition(id: $scrollPosition, anchor: .center)
            .frame(height: 228)
            
            // Page Indicator
            HStack {
                let currentIndex = (scrollPosition ?? 0) % cards.count
                ForEach(0..<cards.count, id: \.self) { index in
                    Circle()
                        .fill(currentIndex == index ? Color.black.opacity(0.8) : Color.gray.opacity(0.2))
                        .frame(width: 8)
                }
            }
        }
        .onAppear() {
            tempCards = Array(repeating: cards, count: 3)
            scrollPosition = cards.count
        }
    }
}

#Preview {
    LMCarouselDealSection()
}
