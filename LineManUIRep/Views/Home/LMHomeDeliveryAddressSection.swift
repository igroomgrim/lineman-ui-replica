//
//  LMHomeDeliveryAddressSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeDeliveryAddressSection: View {
    private let sectionHeight: CGFloat = 48
    let address: String
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Image(systemName: "house")
                    .foregroundColor(.white)
                    .bold()
                Text(address)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
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
    LMHomeDeliveryAddressSection(address: "PeonyBake Coffee Shop")
}
