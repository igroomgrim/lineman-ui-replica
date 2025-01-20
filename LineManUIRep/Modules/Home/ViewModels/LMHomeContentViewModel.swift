//
//  LMHomeContentViewModel.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 14/1/2568 BE.
//

import SwiftUI

class LMHomeContentViewModel: ObservableObject {
    @Published var adsList: [LMHomeAds] = []

    func loadAds() {
        // TODO: Load ads from API
        adsList = [
            LMHomeAds(id: "1", layoutType: .standaloneAds, items: [
                LMHomeAdsItem(id: "1", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
            ]),
            LMHomeAds(id: "2", layoutType: .carouselAds, items: [
                LMHomeAdsItem(id: "1", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "2", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "3", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
            ]),
            LMHomeAds(id: "3", layoutType: .scrollableAds, items: [
                LMHomeAdsItem(id: "1", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "2", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openWebView, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "3", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "4", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openWebView, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "5", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "6", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openWebView, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "7", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "8", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openWebView, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
                LMHomeAdsItem(id: "9", imageUrl: "https://example.com/ad.jpg", action: .init(type: .openDeepLink, url: "https://example.com/ads123/link", parameters: nil), title: "Pizza Promotion", description: "Pizza Promotion Buy 1 Get 1", trackingId: "123"),
            ]),
        ]
    }
}

