//
//  LMCompletedOrdersView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 4/1/2568 BE.
//

import SwiftUI

struct LMCompletedOrdersView: View {
    private let completedOrders: [LMOrderHistoryCell] = [
        LMOrderHistoryCell(),
        LMOrderHistoryCell(),
        LMOrderHistoryCell(),
        LMOrderHistoryCell(),
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            // Filter buttons
            LMOrderTypeFilterView()
                .padding(.vertical, 8)
            
            // Orders list
            List {
                ForEach(completedOrders, id: \.self.id) { order in
                    order
                }
            }
            .listStyle(.plain)
            .background(.white)
        }
    }
}

#Preview {
    LMCompletedOrdersView()
}
