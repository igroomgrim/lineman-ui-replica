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
        VStack {
            Button(action: {}) {
                VStack(alignment: .center, spacing: 8) {
                    ZStack(alignment: .topTrailing) {
                        Image(systemName: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(LMColor.gradientGreen)
                        
                        // Badge if exists
                        if let badge = badge {
                            Text(badge)
                                .font(.system(size: 10))
                                .bold()
                                .foregroundColor(.red)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 2)
                                .background(
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
                .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
                
                
            }
            // Title
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
                .padding(.bottom, 12)
                .bold()
        }
    }
}

#Preview {
    LMSecondaryServiceButton(title: "Delivery", image: "cart", badge: "New")
}
