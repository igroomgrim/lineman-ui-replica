//
//  LMTabViewButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMTabViewButton: View {
    let screenType: ScreenType
    @Binding var selectedTab: ScreenType
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut) {
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
            .foregroundColor(screenType == selectedTab ? .green : .black)
        }
    }
}

#Preview {
    LMTabViewButton(screenType: .home, selectedTab: .constant(.home))
}
