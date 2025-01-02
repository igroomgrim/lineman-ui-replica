//
//  LMHomeView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeView: View {
    private let defaultSpacing: CGFloat = 16
    
    var body: some View {
        ZStack(alignment: .top) {
            LMHeaderBackground()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 16) {
                    LMHomeProfileSection(customerName: "John Doe", promotionText: "Every Meal Start ฿49")
                    LMHomeDeliveryAddressSection(address: "PeonyHomeBake Coffee Shop")
                    LMHomeServicesSection()
                    LMSingleDealSection()
                }
                .padding(.horizontal, defaultSpacing)
                
                Spacer(minLength: defaultSpacing)
                
                VStack {
                    LMCarouselDealSection()
                }
            }
        }
    }
}

#Preview {
    LMHomeView()
}
