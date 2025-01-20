//
//  LMCarouselPromoViewModel.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 15/1/2568 BE.
//

import SwiftUI

class LMCarouselPromoViewModel: ObservableObject {
    private let adsItem: LMHomeAdsItem
    
    init(adsItem: LMHomeAdsItem) {
        self.adsItem = adsItem
    }
}
