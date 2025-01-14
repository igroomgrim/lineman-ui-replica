//
//  LMHomeScreen.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeScreen: View {    
    var body: some View {
        GeometryReader { geometry in
            let topInsetHeight = geometry.safeAreaInsets.top + LMTheme.Padding.padding24
            
            ScrollView {
                ZStack(alignment: .top, content: {
                    LMAdsHeaderBackground()
                    
                    // Part 1
                    VStack(spacing: LMTheme.Spacing.spacing16) {
                        LMHomeProfileSection(customerName: "Anak", promotionText: "Every Meal Start ฿49*")
                        LMHomeDeliveryAddressSection(address: "PeonyBake Coffee Shop")
                        LMHomeServiceSection(serviceState: .constant(.basic))
                    }
                    .padding(.horizontal, LMTheme.Padding.padding16)
                    .padding(.top, topInsetHeight)
                })
                
                Spacer(minLength: LMTheme.Spacing.spacing20)
                
                // Part 2
                LMAdsCarousel()
            }
            .scrollIndicators(.never)
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    LMHomeScreen()
}
