//
//  LineManUIRepApp.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

@main
struct LineManUIRepApp: App {
    var body: some Scene {
        WindowGroup {
            LMTabCoordinatorView(selectedTab: .constant(.home))
                .preferredColorScheme(.light)
        }
    }
}
