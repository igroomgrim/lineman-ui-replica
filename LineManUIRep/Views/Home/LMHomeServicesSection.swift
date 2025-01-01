//
//  LMHomeServicesSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeServicesSection: View {
    private let defaultSpacing: CGFloat = 16
    
    var body: some View {
        VStack(spacing: defaultSpacing) {
            HStack(spacing: defaultSpacing) {
                LMPrimaryServiceButton(title: "Food", image: "cart", badge: "ลด ฿100")
                LMPrimaryServiceButton(title: "Ride", image: "scooter", badge: "ใหม่")
            }.frame(maxWidth: .infinity)
            HStack(spacing: 12) {
                LMSecondaryServiceButton(
                    title: "Messenger",
                    image: "bag",
                    badge: "ลดราคา"
                )
                
                LMSecondaryServiceButton(
                    title: "Mart",
                    image: "basket",
                    badge: "ส่งฟรี!"
                )
                
                LMSecondaryServiceButton(
                    title: "Packages",
                    image: "ticket",
                    badge: "SALE"
                )
            }
        }
    }
}

#Preview {
    LMHomeServicesSection()
}
