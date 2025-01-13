//
//  LMCoreServiceBadge.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

struct LMCoreServiceBadge: View {
    let text: String
    let isBlinking: Bool
    @State private var isBlinkingState: Bool = false
    
    init(text: String, isBlinking: Bool = false) {
        self.text = text
        self.isBlinking = isBlinking
    }
    
    var body: some View {
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
}

#Preview {
    VStack(spacing: LMTheme.Spacing.medium) {
        LMCoreServiceBadge(text: "ลด ฿100*", isBlinking: true)
        LMCoreServiceBadge(text: "ใหม่")
    }
}
