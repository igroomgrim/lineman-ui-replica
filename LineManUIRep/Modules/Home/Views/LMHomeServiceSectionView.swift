//
//  LMHomeServiceSectionView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

struct LMHomeServiceSectionView: View {
    @EnvironmentObject var homeServiceCurrentState: LMHomeServiceCurrentState

    var body: some View {
        switch homeServiceCurrentState.serviceState {
        case .basic:
            VStack(spacing: LMTheme.Spacing.spacing16) {
                LMPrimaryServiceButton(
                    title: "Food",
                    image: "popcorn",
                    badgeTitle: "ลด ฿100*",
                    badgeType: .type1,
                    isBadgeBlinking: true,
                    action: {})
                HStack(spacing: LMTheme.Spacing.spacing12) {
                    LMPrimaryServiceButton(
                        title: "Messenger",
                        image: "bag",
                        badgeTitle: "ลดราคา",
                        badgeType: .type2,
                        isBadgeBlinking: false,
                        action: {})
                    LMPrimaryServiceButton(
                        title: "Package",
                        image: "ticket",
                        badgeTitle: "SALE",
                        badgeType: .type2,
                        isBadgeBlinking: false,
                        action: {})
                }
            }
        case .withDelivery:
            VStack(spacing: LMTheme.Spacing.spacing16) {
                HStack(spacing: LMTheme.Spacing.spacing16) {
                    LMPrimaryServiceButton(
                        title: "Food",
                        image: "popcorn",
                        badgeTitle: "ลด ฿100*",
                        badgeType: .type1,
                        isBadgeBlinking: true,
                        action: {})
                    LMPrimaryServiceButton(
                        title: "Ride",
                        image: "moped",
                        badgeTitle: "ใหม่",
                        badgeType: .type1,
                        isBadgeBlinking: true,
                        action: {})
                }
                HStack(spacing: LMTheme.Spacing.spacing12) {
                    LMSecondaryServiceButton(title: "Messenger", image: "bag", badge: "ลดราคา", action: {})
                    LMSecondaryServiceButton(title: "Mart", image: "basket", badge: "ส่งฟรี", action: {})
                    LMSecondaryServiceButton(title: "Package", image: "ticket", badge: "SALE", action: {})
                }
            }
        }
    }
}

#Preview {
    LMHomeServiceSectionView()
    Spacer()
    LMHomeServiceSectionView()
}
