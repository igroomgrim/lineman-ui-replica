//
//  LMHomeView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeView: View {
    private let topPadding: CGFloat = 42
    private let defaultSpacing: CGFloat = 16
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .top) {
                LMHeaderBackground()
                
                VStack(spacing: 16) {
                    Spacer(minLength: 16)
                    LMHomeProfileSection(customerName: "Anak", promotionText: "Every Meal Start ฿49*")
                    LMHomeDeliveryAddressSection(address: "PeonyBake Coffee Shop")
                    LMHomeServicesSection()
                    LMSingleDealSection()
                }
                .padding(.horizontal, defaultSpacing)
                .padding(.top, topPadding)
            }
            
            Spacer(minLength: defaultSpacing + 8)
            
            VStack {
                LMCarouselDealSection()
            }
            
            VStack {
                LMSrollableDealSection()
            }
            
        } // ScrollView
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    LMHomeView()
}
