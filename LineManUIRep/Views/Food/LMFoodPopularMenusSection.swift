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
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Header
            Text("หมวดหมู่ยอดนิยม")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(LMColor.fontSoftBlack)
                .padding(.horizontal)
            
            // Menu Grid
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(
                    rows: [
                        GridItem(.fixed(120)),
                        GridItem(.fixed(120))
                    ],
                    spacing: 20
                ) {
                    ForEach(menus) { menu in
                        LMFoodPopularMenuButton(menu)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    LMFoodPopularMenusSection()
}
