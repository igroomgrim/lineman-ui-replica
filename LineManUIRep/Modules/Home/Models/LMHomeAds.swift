//
//  LMHomeAds.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 14/1/2568 BE.
//

enum LMHomeAdsLayoutType: String, Codable {
    case standaloneAds = "standalone_ads"
    case carouselAds = "carousel_ads"
    case scrollableAds = "scrollable_ads"
}

enum LMHomeAdsActionType: String, Codable {
    case openDeepLink = "deep_link"
    case openWebView = "web_view"
    case none = "none"
}

struct LMHomeAdsAction: Codable {
    let type: LMHomeAdsActionType
    let url: String
    let parameters: [String: String]? // Parameters for deep link
}

struct LMHomeAdsItem: Codable, Identifiable {
    let id: String
    let imageUrl: String
    let action: LMHomeAdsAction

    // Optional
    let title: String?
    let description: String?
    let trackingId: String?
    
}

struct LMHomeAds: Codable, Identifiable {
    let id: String
    let layoutType: LMHomeAdsLayoutType
    let items: [LMHomeAdsItem]
}

// MARK: - Sample Data
/*

// LMHomeAdsItem 
{
    "id": "123",
    "imageUrl": "https://example.com/ad.jpg",
    "action": {
        "type": "deeplink",
        "value": "restaurant/456",
        "parameters": {
            "source": "home_banner",
            "campaign": "new_year"
        }
    },
    "title": "New Restaurant",
    "description": "Try our new dishes!",
    "trackingId": "campaign_123"
}

// LMHomeAds
{
    "id": "123",
    "layoutType": "carousel_ads",
    "items": [LMHomeAdsItem]
}
*/
