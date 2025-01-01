//
//  ContentView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        VStack {
            Spacer()
            LMMainTabView(selectedTab: $selectedTab)
        }
        .safeAreaPadding(.bottom, 22)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}
