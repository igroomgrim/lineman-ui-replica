//
//  LMPromoAction.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 20/1/2568 BE.
//

struct LMPromoAction: Codable, Equatable {
    let type: LMPromoActionType
    let targetId: String? // LMRestaurant.id, LMPromo.id, etc.
    let url: String
    let parameters: [String: String]? // Parameters for deep link
}
