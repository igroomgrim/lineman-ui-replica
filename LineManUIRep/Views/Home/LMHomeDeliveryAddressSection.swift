//
//  LMHomeDeliveryAddressSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeDeliveryAddressSection: View {
    let address: String
    
    var body: some View {
        Button(action: {
        }) {
            HStack {
                Image(systemName: "house")
                    .foregroundColor(.white)
                    .bold()
                Text(address)
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
            }
            .padding()
            .background(.black.opacity(0.2))
            .cornerRadius(8)
        }
    }
}

#Preview {
    LMHomeDeliveryAddressSection(address: "PeonyHomeBake Coffee Shop")
}
