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
            if selectedTab == .home {
                LMHomeView()
            }
            
            Spacer()
            LMMainTabView(selectedTab: $selectedTab)
        }
        .safeAreaPadding(.bottom, 24)
        .safeAreaPadding(.top, 48)
        .ignoresSafeArea(edges: [.top, .bottom])
    }
}

#Preview {
    ContentView()
}
