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
                Text("Inbox")
            case .more:
                Text("More")
            }
            
            LMMainTabView(selectedTab: $selectedTab)
        }
        .safeAreaPadding(.bottom, 24)
        .ignoresSafeArea(edges: [.top, .bottom])
        .background(.gray.opacity(0.1))
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
