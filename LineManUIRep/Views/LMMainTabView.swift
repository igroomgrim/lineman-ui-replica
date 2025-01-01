//
//  LMMainTabView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMMainTabView: View {
    @Binding var selectedTab: Int

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Divider()
                .frame(height: 1)
            HStack {
                LMTabViewButton(title: "Home", icon: "house", isSelected: selectedTab == 0) {
                    selectedTab = 0
                }
                LMTabViewButton(title: "Orders", icon: "clock", isSelected: selectedTab == 1) {
                    selectedTab = 1
                }
                LMTabViewButton(title: "Inbox", icon: "envelope", isSelected: selectedTab == 2) {
                    selectedTab = 2
                }
                LMTabViewButton(title: "More", icon: "ellipsis", isSelected: selectedTab == 3) {
                    selectedTab = 3
                }
            }
            .padding(.vertical, 8)
            .background(Color.white)
        }
    }
}

#Preview {
    LMMainTabView(selectedTab: .constant(0))
}
