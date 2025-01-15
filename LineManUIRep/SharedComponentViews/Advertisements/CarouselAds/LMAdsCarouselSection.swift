//
//  LMAdsCarouselSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

struct LMAdsCarouselSection: View {
    private let adsButtons = [
        LMAdsCarouselItem(action: {}),
        LMAdsCarouselItem(action: {}),
        LMAdsCarouselItem(action: {})
    ]
    private let buttonWidth: CGFloat = UIScreen.main.bounds.width - (LMTheme.Spacing.spacing16 * 2)
    
    @State var tempAdsButtons: [[LMAdsCarouselItem]] = []
    @State var scrollPosition: Int?
    
    var body: some View {
        let displayAdsButtons = tempAdsButtons.flatMap { $0 }
        let widthDifference = UIScreen.main.bounds.width - buttonWidth
        
        VStack {
            // Carousel
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 8) {
                    ForEach(0..<displayAdsButtons.count, id: \.self) { index in
                        displayAdsButtons[index]
                            .frame(width: buttonWidth)
                    }
                }
                .scrollTargetLayout()
            })
            .contentMargins(widthDifference/2, for: .scrollContent)
            .scrollTargetBehavior(.viewAligned)
            .scrollPosition(id: $scrollPosition, anchor: .center)
            .frame(height: 228)
            
            // Page Indicator
            HStack {
                let currentIndex = (scrollPosition ?? 0) % adsButtons.count
                ForEach(0..<adsButtons.count, id: \.self) { index in
                    Circle()
                        .fill(currentIndex == index ? Color.black.opacity(0.8) : Color.gray.opacity(0.2))
                        .frame(width: 8)
                }
            }
        }
        .onAppear() {
            tempAdsButtons = Array(repeating: adsButtons, count: 3)
            scrollPosition = adsButtons.count
        }
    }
}

#Preview {
    LMAdsCarouselSection()
}
