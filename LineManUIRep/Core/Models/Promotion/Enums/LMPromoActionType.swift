//
//  LMPromoActionType.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 20/1/2568 BE.
//

enum LMPromoActionType: String, Codable {
    // Internal deep links
    case openRestaurant = "open_restaurant"
    case openCoupon = "open_coupon"
    case openCategory = "open_category"
    case openCollection = "open_collection"
    
    // External links
    case openWebView = "open_web_view"
    case openUniversalLink = "open_universal_link"
    case openAppStore = "open_app_store"
}
