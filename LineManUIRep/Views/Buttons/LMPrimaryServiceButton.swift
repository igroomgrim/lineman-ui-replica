//
//  LMPrimaryServiceButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMPrimaryServiceButton: View {
    let title: String
    let image: String
    let badge: String?
    
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center) {
                Spacer()
                    
                // Left side - Title
                Text(title)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(LMColor.fontSoftBlack)
                    .layoutPriority(1)
                
                Spacer()
                    
                // Right side - Image
                ZStack(alignment: .center) {
                    Image(systemName: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 66, height: 66)
                        .foregroundStyle(LMColor.gradientGreen)
                        .offset(x: 0, y: 16)
                    
                    // Badge if exists
                    if let badge = badge {
                        Text(badge)
                            .font(.caption2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 6)
                            .background(Color.red)
                            .cornerRadius(12)
                            .offset(x: 0, y: -28)
                    }
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 80)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: .gray.opacity(0.4), radius: 4)
        }
    }
}

#Preview {
    LMPrimaryServiceButton(title: "Food", image: "fork.knife", badge: "Discount 100฿")
    
    HStack {
        LMPrimaryServiceButton(title: "Food", image: "popcorn", badge: "ใหม่")
        LMPrimaryServiceButton(title: "Ride", image: "moped", badge: "New")
    }
}
