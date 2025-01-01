//
//  LMTabViewButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMTabViewButton: View {
    let title: String
    let icon: String
    var isSelected: Bool = false
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 6) {
                Image(systemName: icon)
                    .font(.system(size: 18))
                    .frame(height: 18)
                
                Text(title)
                    .font(.caption)
                    .bold()
            }
            .frame(maxWidth: .infinity)
            .foregroundColor(isSelected ? .green : .black)
        }
    }
}

#Preview {
    LMTabViewButton(title: "Home", icon: "house", isSelected: true, action: {})
}
