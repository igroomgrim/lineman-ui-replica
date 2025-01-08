//
//  LMFoodPopularMenusSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 7/1/2568 BE.
//

import SwiftUI

struct LMFoodPopularMenusSection: View {
    private let menus: [PopularMenu] = [
        PopularMenu(image: "moon.dust", title: "ส้มตำ ไก่ย่าง"),
        PopularMenu(image: "sun.snow", title: "ข้าวมันไก่"),
        PopularMenu(image: "sun.haze", title: "ชานมไข่มุก ชาผลไม้"),
        PopularMenu(image: "moon.haze", title: "อาหารตามสั่ง กะเพรา"),
        PopularMenu(image: "cloud.rain", title: "เค้ก ขนมหวาน"),
        PopularMenu(image: "moon.dust", title: "ก๋วยเตี๋ยว บะหมี่"),
        PopularMenu(image: "sun.snow", title: "กาแฟ"),
        PopularMenu(image: "sun.haze", title: "ขนมจีน แกงไต้"),
        PopularMenu(image: "moon.haze", title: "ราดหน้า ผัดซีอิ๊ว"),
        PopularMenu(image: "cloud.rain", title: "ก๋วยเตี๋ยวเรือ"),
        PopularMenu(image: "moon.dust", title: "ส้มตำ ไก่ย่าง"),
        PopularMenu(image: "sun.snow", title: "ข้าวมันไก่"),
        PopularMenu(image: "sun.haze", title: "ชานมไข่มุก ชาผลไม้"),
        PopularMenu(image: "moon.haze", title: "อาหารตามสั่ง กะเพรา"),
        PopularMenu(image: "cloud.rain", title: "เค้ก ขนมหวาน"),
        PopularMenu(image: "moon.dust", title: "ส้มตำ ไก่ย่าง"),
        PopularMenu(image: "sun.snow", title: "ข้าวมันไก่"),
        PopularMenu(image: "sun.haze", title: "ชานมไข่มุก ชาผลไม้"),
        PopularMenu(image: "moon.haze", title: "อาหารตามสั่ง กะเพรา"),
    ]
    
    @State private var scrollOffset: CGFloat = 0
    @State private var contentWidth: CGFloat = 0
    private let horizontalSpacing: CGFloat = 16
    private let grayCapsuleWidth: CGFloat = 32
    private let blackCapsuleWidth: CGFloat = 16
    private let screenWidth = UIScreen.main.bounds.width
    
    private var maxScrollOffset: CGFloat {
        return max(0, contentWidth - screenWidth - (horizontalSpacing * 2))
    }
    
    private var blackCapsuleOffset: CGFloat {
        let maxOffset = grayCapsuleWidth - blackCapsuleWidth // 32 - 16 = 16
        
        return min(
            maxOffset,
            max(
                0,
                (scrollOffset / maxScrollOffset) * maxOffset
            )
        )
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("หมวดหมู่ยอดนิยม")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(LMColor.fontSoftBlack)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [
                    GridItem(.fixed(88)),
                    GridItem(.fixed(88))
                ], spacing: horizontalSpacing) {
                    ForEach(Array(menus.enumerated()), id: \.element.id) { index, menu in
                        LMFoodPopularMenuButton(menu, action: {
                            print("tapped on button index: \(index)")
                        })
                    }
                }
                .padding(.horizontal)
                .overlay(
                    GeometryReader { proxy in
                        Color.clear
                            .preference(
                                key: ScrollOffsetPreferenceKey.self,
                                value: -proxy.frame(in: .named("scroll")).minX
                            )
                            .preference(
                                key: ContentWidthPreferenceKey.self,
                                value: proxy.size.width
                            )
                    }
                )
            }
            .coordinateSpace(name: "scroll")
            .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                scrollOffset = value
            }
            .onPreferenceChange(ContentWidthPreferenceKey.self) { width in
                contentWidth = width
            }
            
            ZStack(alignment: .leading) {
                Capsule()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: grayCapsuleWidth, height: 6)
                
                Capsule()
                    .fill(LMColor.fontSoftBlack)
                    .frame(width: blackCapsuleWidth, height: 6)
                    .offset(x: blackCapsuleOffset)
                    .animation(.spring(response: 0.2), value: scrollOffset)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct ContentWidthPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    LMFoodPopularMenusSection()
}
