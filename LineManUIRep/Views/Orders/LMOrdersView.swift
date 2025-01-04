//
//  LMOrdersView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 4/1/2568 BE.
//

import SwiftUI

enum LMOrderHistoryTab: CaseIterable {
    case ongoing
    case completed
    case canceledFailed
    
    var title: String {
        switch self {
        case .ongoing:
            return "Ongoing"
        case .completed:
            return "Completed"
        case .canceledFailed:
            return "Canceled/Failed"
        }
    }
}

struct LMOrdersView: View {
    @State private var selectedTab: LMOrderHistoryTab = .completed
    
    var body: some View {
        VStack {
            // Header
            HStack {
                Text("Order History")
                    .font(.system(size: 15))
                    .foregroundStyle(LMColor.fontSoftBlack)
                    .fontWeight(.bold)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundStyle(LMColor.fontSoftBlack)
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 8)
            
            // Custom Tab Indicator
            HStack(alignment: .bottom) {
                ForEach(LMOrderHistoryTab.allCases, id: \.self) { tab in
                    Button(action: {
                        withAnimation {
                            selectedTab = tab
                        }
                    }) {
                        VStack(spacing: 8) {
                            Text(tab.title)
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(selectedTab == tab ? .green : .gray)
                            
                            // Green underline for selected tab
                            Rectangle()
                                .fill(selectedTab == tab ? Color.green : Color.clear)
                                .frame(height: 3)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            
            // Tab Selector
            TabView(selection: $selectedTab) {
                LMOngoingOrdersView()
                    .tag(LMOrderHistoryTab.ongoing)
                LMCompletedOrdersView()
                    .tag(LMOrderHistoryTab.completed)
                LMCanceledNFailedOrdersView()
                    .tag(LMOrderHistoryTab.canceledFailed)
            }
            .tabViewStyle(.page)
        }
        .safeAreaPadding(.top, 60)
    }
}

#Preview {
//    LMOrdersView()
    ContentView()
}
