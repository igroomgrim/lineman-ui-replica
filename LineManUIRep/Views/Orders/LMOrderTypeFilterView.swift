//
//  LMOrderTypeFilterView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 4/1/2568 BE.
//

import SwiftUI

struct LMOrderTypeFilterView: View {
    @State private var selectedFilter: OrderType = .none
    
    enum OrderType {
        case foodDelivery
        case mart
        case messenger
        case ride
        case none
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                LMOrderTypeFilterButton(title: "Food Delivery", isSelected: selectedFilter == .foodDelivery, action: {
                    toggleFilter(.foodDelivery)
                })
                LMOrderTypeFilterButton(title: "Mart", isSelected: selectedFilter == .mart, action: {
                    toggleFilter(.mart)
                })
                LMOrderTypeFilterButton(title: "Messenger", isSelected: selectedFilter == .messenger, action: {
                    toggleFilter(.messenger)
                })
                LMOrderTypeFilterButton(title: "Ride", isSelected: selectedFilter == .ride, action: {
                    toggleFilter(.ride)
                })
            }
            .padding(.horizontal)
        }
    }

    private func toggleFilter(_ filter: OrderType) {
        if selectedFilter == filter {
            selectedFilter = .none
        } else {
            selectedFilter = filter
        }
    }
}

#Preview {
    LMOrderTypeFilterView()
}
