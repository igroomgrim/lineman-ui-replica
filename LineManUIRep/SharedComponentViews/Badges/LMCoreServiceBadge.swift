//
//  LMCoreServiceBadge.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

enum LMCoreServiceBadgeType {
    case normal
    case inverted
}

struct LMCoreServiceBadge: View {
    let type: LMCoreServiceBadgeType
    let text: String
    let isBlinking: Bool
    @State private var isBlinkingState: Bool = false
    
    init(text: String, type: LMCoreServiceBadgeType = .normal, isBlinking: Bool = false) {
        self.text = text
        self.type = type
        self.isBlinking = isBlinking
    }

    var body: some View {
        badgeContent
    }

    private var badgeContent: some View {
        switch type {
        case .normal:
            return normalBadge
        case .inverted:
            return invertedBadge
        }
    }

    private var normalBadge: some View {
        Text(text)
            .font(.caption2)
            .fontWeight(.bold)
            .foregroundColor(isBlinking ? (isBlinkingState ? .white : LMTheme.Colors.red01) : .white)
            .padding(.horizontal, 6)
            .background(LMTheme.Colors.red01)
            .cornerRadius(LMTheme.CornerRadius.medium)
            .animation(.easeOut(duration: 1).repeatForever(), value: isBlinkingState)
            .onAppear {
                if isBlinking {
                    isBlinkingState.toggle()
                }
            }
    }

    private var invertedBadge: some View {
        Text(text)
            .font(.system(size: 10))
            .fontWeight(.bold)
            .foregroundColor(LMTheme.Colors.red01)
            .padding(.horizontal, 6)
            .padding(.vertical, 2)
            .background(.white)
            .overlay(
                RoundedRectangle(cornerRadius: LMTheme.CornerRadius.medium)
                    .fill(LMTheme.Colors.red02)
            )
    }
}

#Preview {
    VStack(spacing: LMTheme.Spacing.medium) {
        LMCoreServiceBadge(text: "ลด ฿100*", type: .normal, isBlinking: true)
        LMCoreServiceBadge(text: "ส่งฟรี", type: .inverted)
    }
}
