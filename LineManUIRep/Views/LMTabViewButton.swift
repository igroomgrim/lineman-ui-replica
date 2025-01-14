//
//  LMTabViewButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMTabViewButton: View {
    let screenType: LMScreenType
    @Binding var selectedTab: LMScreenType
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.2)) {
                selectedTab = screenType
            }
        }) {
            VStack(spacing: 6) {
                Image(systemName: screenType.iconName)
                    .font(.system(size: 18))
                    .frame(height: 18)
                
                Text(screenType.title)
                    .font(.caption)
                    .bold()
            }
            .frame(maxWidth: .infinity)
            .foregroundColor(screenType == selectedTab ? .green : LMColor.fontSoftBlack)
        }
    }
}

#Preview {
    LMTabViewButton(screenType: .home, selectedTab: .constant(.home))
    LMTabViewButton(screenType: .orders, selectedTab: .constant(.home))
}
