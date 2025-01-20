//
//  LMHomeContentView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeContentView: View {
    @StateObject var homeServiceCurrentState = LMHomeServiceCurrentState()
    @StateObject var viewModel = LMHomeContentViewModel()
    
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
                        LMHomeServiceSection()
                    }
                    .padding(.horizontal, LMTheme.Padding.padding16)
                    .padding(.top, topInsetHeight)
                })
                
                Spacer(minLength: LMTheme.Spacing.spacing20)
                
                if homeServiceCurrentState.serviceState == .withDelivery {
                    VStack {
                        LMStandaloneAdsSection(action: {})
                    }
                    .padding(.horizontal, LMTheme.Padding.padding16)
                    .padding(.bottom, LMTheme.Padding.padding16)
                }
                
                // Part 2
                LMAdsCarouselSection()
                Spacer(minLength: LMTheme.Spacing.spacing20)
                
                // Part 3 - For .withDelivery
                if homeServiceCurrentState.serviceState == .withDelivery {
                    LMScrollableAdsSection()
                }
                
                Spacer(minLength: LMTheme.Spacing.spacing24)
            }
            .scrollIndicators(.never)
            .ignoresSafeArea(edges: .top)
            .background(LMTheme.Colors.gray02)
            .environmentObject(homeServiceCurrentState)
        }
        .onAppear {
            homeServiceCurrentState.serviceState = .withDelivery
        }
    }
    
    private func loadAds() {
        viewModel.loadAds()
    }
    
    private var dynamicLayoutSection: some View {
        ForEach(viewModel.adsList) { ads in
            switch ads.layoutType {
            case .standaloneAds:
                LMStandaloneAdsSection(action: {})
            case .carouselAds:
                LMAdsCarouselSection()
            case .scrollableAds:
                LMScrollableAdsSection()
            }
        }
    }
}

#Preview {
    LMHomeContentView()
}
