//
//  LMOrdersScreen.swift
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

extension LMOrderHistoryTab {
    var index: Int {
        switch self {
        case .ongoing: return 0
        case .completed: return 1
        case .canceledFailed: return 2
        }
    }
}

struct LMOrdersScreen: View {
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
            VStack {
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
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                
                // Sliding indicator
                GeometryReader { geometry in
                    let tabWidth = geometry.size.width / CGFloat(LMOrderHistoryTab.allCases.count)
                    let offsetX = tabWidth * CGFloat(selectedTab.index)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: tabWidth, height: 3)
                        .offset(x: offsetX)
                        .animation(.spring(Spring(duration: 0.2)), value: selectedTab)
                }
                .frame(height: 3)
                .padding(.top, 4)
                
                Divider()
                    .background(.gray)
                    .opacity(0.1)
                    .padding(.top, -8)
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
    LMOrdersScreen()
}
