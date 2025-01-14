//
//  ContentView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: LMScreenType = .home
    
    var body: some View {
        VStack {
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
