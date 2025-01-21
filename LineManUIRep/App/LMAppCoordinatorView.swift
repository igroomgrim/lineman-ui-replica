//
//  LMAppCoordinatorView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

struct LMTabItem: View {
    let screenType: LMScreenType
    let isSelected: Bool
    
    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: screenType.iconName)
                .font(.system(size: 18))
                .frame(height: 18)
            
            Text(screenType.title)
                .font(.lmFont(type: .regular, size: 18))
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(isSelected ? .blue : LMTheme.Colors.textPrimary)
    }
}

struct LMAppCoordinatorView: View {
    @ObservedObject var appCoordinator: LMAppCoordinator
    
    var body: some View {
        ZStack {
            Group {
                switch appCoordinator.selectedTab {
                case .home:
                    NavigationStack(path: $appCoordinator.homeCoordinator.path) {
                        LMHomeContentView().environmentObject(appCoordinator.homeCoordinator)
                    }
                case .orders:
                    NavigationStack(path: $appCoordinator.ordersCoordinator.path) {
                        LMOrdersScreen()
                    }
                case .inbox:
                    NavigationStack(path: $appCoordinator.inboxCoordinator.path) {
                        LMInboxScreen()
                    }
                case .more:
                    NavigationStack(path: $appCoordinator.moreCoordinator.path) {
                        LMMoreScreen()
                    }
                }
            }
            
            
        }
        .safeAreaInset(edge: .bottom) {
            LMMainTabView(selectedTab: $appCoordinator.selectedTab)
        }
    }
}

#Preview {
    LMAppCoordinatorView(appCoordinator: LMAppCoordinator())
}
