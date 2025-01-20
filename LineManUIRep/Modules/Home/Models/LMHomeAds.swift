//
//  LMHomeAds.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 14/1/2568 BE.
//

/// Represents different types of promotions
enum LMPromoType: String, Codable, CaseIterable {
    case restaurant = "restaurant"
    case delivery = "delivery"
    case campaign = "campaign"
    case seasonal = "seasonal"
}

/// Defines how promotions should be displayed in the UI
enum LMPromoLayoutType: String, Codable, CaseIterable {
    case standalone = "standalone"
    case carousel = "carousel"
    case scrollable = "scrollable"
}

enum LMPromoDiscountType: String, Codable {
    case percentage = "percentage"
    case fixedAmount = "fixed_amount"
    case freeDelivery = "free_delivery"
    case buyOneGetOne = "buy_one_get_one"
}

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

struct LMRestaurant: Codable, Identifiable, Equatable {
    let id: String
    let name: String
    let logoUrl: String
    let rating: Double?
    let distance: Double?  // in kilometers from user's delivery address
    
    var formattedDistance: String? {
        guard let distance = distance else { return nil }
        return String(format: "%.1f km", distance)
    }
    
    var formattedRating: String? {
        guard let rating = rating else { return nil }
        return String(format: "%.1f", rating)
    }
}

struct LMPromoAction: Codable, Equatable {
    let type: LMPromoActionType
    let targetId: String? // LMRestaurant.id, LMPromo.id, etc.
    let url: String
    let parameters: [String: String]? // Parameters for deep link
}

struct LMPromo: Codable, Identifiable, Equatable {
    let id: String
    let type: LMPromoType
    let title: String
    let description: String?
    let imageUrl: String
    let thumbnailUrl: String?
    let layoutType: LMPromoLayoutType
    let discountType: LMPromoDiscountType
    let discountValue: Int?
    let action: LMPromoAction
    let trackingId: String?
    let restaurant: LMRestaurant?
    
    // Convenience computed properties
    var hasValidDiscount: Bool {
        guard let value = discountValue else { return false }
        return value > 0
    }
    
    var displayDiscount: String? {
        guard let value = discountValue, hasValidDiscount else { return nil }
        
        switch discountType {
        case .percentage:
            return "\(value)% OFF"
        case .fixedAmount:
            return "฿\(value) OFF"
        case .freeDelivery:
            return "Free Delivery"
        case .buyOneGetOne:
            return "Buy 1 Get 1"
        }
    }
}

struct LMPromoSection: Codable, Identifiable {
    let id: String
    let layoutType: LMPromoLayoutType
    let items: [LMPromo]
}

// MARK: - Sample Data
/*
Fetch LMPromoSection from backend and draw in LMHomeContentView automatically
[
    {
        "id": "1",
        "layoutType": "carousel",
        "items": [LMPromo]
    },
    {
        "id": "2",
        "layoutType": "scrollable",
        "items": [LMPromo]
    },
    {
        "id": "3",
        "layoutType": "standalone",
        "items": [LMPromo]
    },
    {
        "id": "4",
        "layoutType": "scrollable",
        "items": [LMPromo]
    }
]
*/

// Add testing support
#if DEBUG
extension LMPromo {
    static var mock: LMPromo {
        LMPromo(
            id: "mock_id",
            type: .restaurant,
            title: "Mock Promotion",
            description: "Test description",
            imageUrl: "https://example.com/image.jpg",
            thumbnailUrl: nil,
            layoutType: .standalone,
            discountType: .percentage,
            discountValue: 20,
            action: LMPromoAction(
                type: .openRestaurant,
                targetId: "rest_123",
                url: "lineman://restaurant/123",
                parameters: nil
            ),
            trackingId: "track_123",
            restaurant: nil
        )
    }
}
#endif
