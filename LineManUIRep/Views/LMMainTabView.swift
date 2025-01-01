//
//  LMMainTabView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMMainTabView: View {
    @Binding var selectedTab: ScreenType

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Divider()
                .frame(height: 1)
            HStack {
                LMTabViewButton(screenType: .home, selectedTab: $selectedTab)
                LMTabViewButton(screenType: .orders, selectedTab: $selectedTab)
                LMTabViewButton(screenType: .inbox, selectedTab: $selectedTab)
                LMTabViewButton(screenType: .more, selectedTab: $selectedTab)
            }
            .padding(.vertical, 8)
            .background(Color.white)
        }
    }
}

#Preview {
    LMMainTabView(selectedTab: .constant(.home))
}
