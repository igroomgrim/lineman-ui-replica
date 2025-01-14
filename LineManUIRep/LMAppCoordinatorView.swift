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
                .font(.caption)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(isSelected ? LMTheme.Colors.green01 : LMTheme.Colors.textPrimary)
    }
}

struct LMAppCoordinatorView: View {
    @ObservedObject var appCoordinator: LMAppCoordinator
    
    var body: some View {
        TabView(selection: $appCoordinator.selectedTab) {
            // Home Tab
            NavigationStack(path: $appCoordinator.homeCoordinator.path) {
                LMHomeScreen()
            }
            .tabItem {
                LMTabItem(screenType: .home,
                          isSelected: appCoordinator.selectedTab == .home)
            }
            .tag(LMScreenType.home)

            // Orders Tab
            NavigationStack(path: $appCoordinator.ordersCoordinator.path) {
                LMOrdersScreen()
            }
            .tabItem {
                LMTabItem(screenType: .orders,
                          isSelected: appCoordinator.selectedTab == .orders)
            }
            .tag(LMScreenType.orders)

            // Inbox Tab
            NavigationStack(path: $appCoordinator.inboxCoordinator.path) {
                LMInboxScreen()
            }
            .tabItem {
                LMTabItem(screenType: .inbox,
                          isSelected: appCoordinator.selectedTab == .inbox)
            }
            .tag(LMScreenType.inbox)

            // More Tab
            NavigationStack(path: $appCoordinator.moreCoordinator.path) {
                LMMoreScreen()
            }
            .tabItem {
                LMTabItem(screenType: .more,
                          isSelected: appCoordinator.selectedTab == .more)
            }
            .tag(LMScreenType.more)
        }
        .tint(LMTheme.Colors.green01)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = .white
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        .environmentObject(appCoordinator)
    }
}

#Preview {
    LMAppCoordinatorView(appCoordinator: LMAppCoordinator())
}
