//
//  LMSecondaryServiceButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMSecondaryServiceButton: View {
    let title: String
    let image: String
    let badge: String?
    
    var body: some View {
        VStack(spacing: 8) {
            Button(action: {}) {
                VStack(alignment: .center, spacing: 8) {
                    ZStack(alignment: .topTrailing) {
                        Image(systemName: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(LMColor.gradientGreen)
                        
                        // Badge if exists
                        if let badge = badge {
                            Text(badge)
                                .font(.system(size: 10))
                                .bold()
                                .foregroundColor(.red)
                                .padding(.horizontal, 6)
                                .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color.red.opacity(0.2))
                                )
                                .offset(x: 12, y: -12)
                        }
                    }
                    .padding(.top, 12)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(Color.white)
                .cornerRadius(12)
            }
            .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
            
            // Title
            Text(title)
                .font(.system(size: 14))
                .bold()
                .foregroundColor(LMColor.fontSoftBlack)
                .padding(.bottom, 8)
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        HStack {
            LMSecondaryServiceButton(title: "Delivery", image: "cart", badge: "New")
            LMSecondaryServiceButton(title: "Delivery", image: "cart", badge: "New")
            LMSecondaryServiceButton(title: "Delivery", image: "cart", badge: "New")
        }
        LMSingleDealSection()
    }
}
