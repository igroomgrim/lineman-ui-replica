//
//  LMHomeDeliveryAddressSectionView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeDeliveryAddressSectionView: View {
    private let sectionHeight: CGFloat = 48
    fileprivate let rightArrowIcon = "chevron.right"
    fileprivate let houseIcon = "house"

    let address: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: houseIcon)
                    .foregroundColor(.white)
                    .bold()
                Text(address)
                    .foregroundColor(.white)
                    .font(.lmFont(type: .bold, size: 14))
                Spacer()
                Image(systemName: rightArrowIcon)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity)
            .frame(height: sectionHeight)
            .background(.black.opacity(0.2))
            .cornerRadius(8)
        }
    }
}

#Preview {
    LMHomeDeliveryAddressSectionView(address: "PeonyBake Coffee Shop", action: {})
}
