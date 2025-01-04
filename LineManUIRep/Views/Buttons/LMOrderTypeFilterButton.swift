//
//  LMOrderTypeFilterButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 4/1/2568 BE.
//

import SwiftUI

struct LMOrderTypeFilterButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 12))
                .fontWeight(.semibold)
                .foregroundColor(isSelected ? .white : LMColor.fontSoftBlack)
                .padding(.horizontal, 12)
                .padding(.vertical, 10)
                .background(isSelected ? .green : .white)
                .overlay(
                    Capsule()
                        .stroke(isSelected ? Color.green : Color.gray.opacity(0.5), lineWidth: 1)
                )
        }
        .clipShape(Capsule())
    }
}

#Preview {
    HStack(spacing: 8) {
        LMOrderTypeFilterButton(title: "Food Delivery", isSelected: true, action: {})
        LMOrderTypeFilterButton(title: "Mart", isSelected: false, action: {})
    }
}
