//
//  LMPromo.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 20/1/2568 BE.
//

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
