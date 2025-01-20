//
//  LMPromoSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 20/1/2568 BE.
//

struct LMPromoSection: Codable, Identifiable {
    let id: String
    let layoutType: LMPromoLayoutType
    let items: [LMPromo]
}
