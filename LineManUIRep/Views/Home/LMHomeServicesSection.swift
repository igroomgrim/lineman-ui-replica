//
//  LMHomeServicesSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeServicesSection: View {
    private let defaultSpacing: CGFloat = 16
    @State private var showFoodView = false
    
    var body: some View {
        VStack(spacing: defaultSpacing) {
//            HStack(spacing: defaultSpacing) {
//                LMPrimaryServiceButton(title: "Food", image: "popcorn", badge: "ลด ฿100", action: {
//                    showFoodView = true
//                })
//                .fullScreenCover(isPresented: $showFoodView, content: {
//                    LMFoodView()
//                }) // NOTE: JUST FOR TESTING
//                
//                LMPrimaryServiceButton(title: "Ride", image: "moped", badge: "ใหม่", action: {})
//            }.frame(maxWidth: .infinity)
//            
//            HStack(spacing: 12) {
//                LMSecondaryServiceButton(
//                    title: "Messenger",
//                    image: "bag",
//                    badge: "ลดราคา"
//                )
//                
//                LMSecondaryServiceButton(
//                    title: "Mart",
//                    image: "basket",
//                    badge: "ส่งฟรี!"
//                )
//                
//                LMSecondaryServiceButton(
//                    title: "Packages",
//                    image: "ticket",
//                    badge: "SALE"
//                )
//            }
        }
    }
}

#Preview {
    LMHomeServicesSection()
}
