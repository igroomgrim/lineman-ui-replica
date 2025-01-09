//
//  LMPromotionBannerSizeMButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 9/1/2568 BE.
//

import SwiftUI

struct LMPromotionBannerSizeMButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("My Coupon")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundStyle(LMColor.fontSoftBlack)
                    
                    Text("Ready to use")
                        .font(.system(size: 14))
                        .foregroundStyle(.black.opacity(0.6))
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Spacer()
                    Image(systemName: "dog")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .foregroundStyle(.black)
                }
            }
            .padding()
            .frame(height: 88)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(LMColor.gradientGreen.opacity(0.4))
            )
        }
    }
}

#Preview {
    HStack {
        LMPromotionBannerSizeMButton(action: {})
        LMPromotionBannerSizeMButton(action: {})
    }
}
