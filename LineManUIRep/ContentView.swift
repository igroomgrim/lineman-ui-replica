//
//  ContentView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: ScreenType = .home
    
    var body: some View {
        VStack {
            switch selectedTab {
            case .home:
                LMHomeView()
            case .orders:
                LMOrdersView()
            case .inbox:
                LMInboxView()
            case .more:
                LMMoreView()
            }
            
            LMMainTabView(selectedTab: $selectedTab)
        }
        .safeAreaPadding(.bottom, 24)
        .ignoresSafeArea(edges: [.top, .bottom])
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
