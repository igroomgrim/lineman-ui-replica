//
//  LMTabCoordinatorView.swift
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

struct LMTabCoordinatorView: View {
    @Binding var selectedTab: LMScreenType
    
    var body: some View {
        TabView {
            // Home
            Tab {
                LMHomeScreen()
            } label: {
                LMTabItem(
                    screenType: .home,
                    isSelected: selectedTab == .home
                )
            }
            
            // Orders
            Tab {
                LMOrdersScreen()
            } label: {
                LMTabItem(
                    screenType: .orders,
                    isSelected: selectedTab == .orders
                )
            }
            
            // Inbox
            Tab {
                LMInboxScreen()
            } label: {
                LMTabItem(
                    screenType: .inbox,
                    isSelected: selectedTab == .inbox
                )
            }
            
            // More
            Tab {
                LMMoreScreen()
            } label: {
                LMTabItem(
                    screenType: .more,
                    isSelected: selectedTab == .more
                )
            }
        }
        .tint(LMTheme.Colors.green01)
        .safeAreaInset(edge: .bottom) {
            VStack(spacing: 0) {
                Divider()
                    .frame(height: 1)
                    .background(LMTheme.Colors.gray02)
                
                Color.clear
                    .frame(height: 49) // Standard TabBar height
            }
        }
    }
}

#Preview {
    LMTabCoordinatorView(selectedTab: .constant(.home))
}
