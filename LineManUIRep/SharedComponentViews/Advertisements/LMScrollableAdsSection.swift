//
//  LMScrollableAdsSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 14/1/2568 BE.
//

import SwiftUI

struct LMScrollableAdsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: LMTheme.Spacing.spacing16) {
            Text("เก็บโค้ดลดสูงสุด ฿100*")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundStyle(LMTheme.Colors.textPrimary)
                .padding(.horizontal, LMTheme.Padding.padding16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    LMDealCard(size: .small, title: "MEGA DEALS!", subTitle: "ลดสูงสุด 70%")
                    LMDealCard(size: .small, title: "ร้านเล็ก ลด ฿100*", subTitle: "โค้ด AROI")
                    LMDealCard(size: .small, title: "ส่งฟรี* 0 บาท", subTitle: "สูงสุด 15กม.*")
                    LMDealCard(size: .small, title: "ซื้อ 1 แถม 1", subTitle: "กาแฟทุกแก้ว")
                    LMDealCard(size: .small, title: "มา 1 จ่าย 5", subTitle: "อันนี้หยอกๆ")
                }
            }
            .contentMargins(.horizontal, LMTheme.Padding.padding16)
        }
    }
}

#Preview {
    LMScrollableAdsSection()
}
