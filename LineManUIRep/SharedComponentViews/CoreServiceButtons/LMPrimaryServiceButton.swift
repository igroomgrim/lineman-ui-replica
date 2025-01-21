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
    let badgeTitle: String?
    let badgeType: LMCoreServiceBadgeType?
    let isBadgeBlinking: Bool?
    let action: () -> Void
    
    init(title: String, image: String, badgeTitle: String? = nil, badgeType: LMCoreServiceBadgeType?, isBadgeBlinking: Bool? = false, action: @escaping () -> Void) {
        self.title = title
        self.image = image
        self.badgeTitle = badgeTitle
        self.badgeType = badgeType
        self.isBadgeBlinking = isBadgeBlinking
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            HStack(alignment: .center) {
                Spacer()
                
                // Left side - Title
                Text(title)
                    .font(.lmFont(type: .bold, size: 14))
                    .foregroundColor(LMTheme.Colors.textPrimary)
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
                    if let badgeTitle = badgeTitle {
                        LMCoreServiceBadge(text: badgeTitle,
                                           type: badgeType ?? .type1, isBlinking: isBadgeBlinking ?? false)
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
    LMPrimaryServiceButton(
        title: "Food",
        image: "fork.knife",
        badgeTitle: "Discount 100฿",
        badgeType: .type1,
        isBadgeBlinking: true,
        action: {}
    )
    
    HStack {
        LMPrimaryServiceButton(
            title: "Food",
            image: "popcorn",
            badgeTitle: "ใหม่",
            badgeType: .type2,
            isBadgeBlinking: true,
            action: {}
        )
        
        LMPrimaryServiceButton(
            title: "Food",
            image: "moped",
            badgeTitle: "New",
            badgeType: .type3,
            isBadgeBlinking: false,
            action: {}
        )
    }
}
