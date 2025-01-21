//
//  LMCoreServiceBadge.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

enum LMCoreServiceBadgeType {
    case type1
    case type2
    case type3
}

struct LMCoreServiceBadge: View {
    let type: LMCoreServiceBadgeType
    let text: String
    let isBlinking: Bool
    @State private var isBlinkingState: Bool = false
    @State private var timer: Timer?
    
    init(text: String, type: LMCoreServiceBadgeType, isBlinking: Bool = false) {
        self.text = text
        self.type = type
        self.isBlinking = isBlinking
    }

    var body: some View {
        badgeContent
    }

    private var badgeContent: some View {
        Group {
            switch type {
            case .type1:
                type1Badge
            case .type2:
                type2Badge
            case .type3:
                type3Badge
            }
        }
    }

    private var type1Badge: some View {
        Text(text)
            .font(.lmFont(type: .bold, size: 12))
            .foregroundColor(isBlinking ? (isBlinkingState ? .white : LMTheme.Colors.red01) : .white)
            .padding(.horizontal, 6)
            .background(LMTheme.Colors.red01)
            .cornerRadius(LMTheme.CornerRadius.radius8)
            .onAppear {
                guard isBlinking else { return }
                
                timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                    isBlinkingState.toggle()
                }
                timer?.fire()
            }
            .onDisappear {
                timer?.invalidate()
                timer = nil
            }
    }

    private var type2Badge: some View {
        Text(text)
            .font(.lmFont(type: .bold, size: 12))
            .foregroundColor(LMTheme.Colors.red01)
            .padding(.horizontal, 6)
            .background(LMTheme.Colors.red02)
            .cornerRadius(LMTheme.CornerRadius.radius8)
    }

    private var type3Badge: some View {
        Text(text)
            .font(.lmFont(type: .bold, size: 10))
            .foregroundColor(LMTheme.Colors.red01)
            .padding(.horizontal, 6)
            .padding(.vertical, 2)
            .background(.white)
            .overlay(
                RoundedRectangle(cornerRadius: LMTheme.CornerRadius.radius8)
                    .fill(LMTheme.Colors.red02)
            )
    }
}

#Preview {
    VStack(spacing: LMTheme.Spacing.spacing16) {
        LMCoreServiceBadge(text: "ลด ฿100*", type: .type1, isBlinking: true)
        LMCoreServiceBadge(text: "SALE", type: .type2)
        LMCoreServiceBadge(text: "ส่งฟรี", type: .type3)
    }
}
