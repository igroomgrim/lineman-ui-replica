//
//  LMSingleDealSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 2/1/2568 BE.
//

import SwiftUI

struct LMSingleDealSection: View {
    var body: some View {
        VStack {
            LMDealCard(size: .medium, title: "Swensen's Buy 1 Get 1 Free!", subTitle: "Only today")
        }
    }
}

#Preview {
    LMSingleDealSection()
}
