//
//  LMHomeContentViewModel.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 14/1/2568 BE.
//

import SwiftUI

class LMHomeContentViewModel: ObservableObject {
    @Published var promotionSections: [LMPromoSection] = []
    
    func fetchPromotions() {
        // TODO: Fetch promotions from API
    }
}
