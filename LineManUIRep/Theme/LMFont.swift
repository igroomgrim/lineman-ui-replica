//
//  LMFont.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 20/1/2568 BE.
//

import SwiftUI

/*
 Family: LINE Seed Sans TH App Font names: ["LINESeedSansTHApp-Regular", "LINESeedSansTHApp-Thin", "LINESeedSansTHApp-Bold", "LINESeedSansTHApp-ExtraBold"]
*/

fileprivate struct LMFont {
    static let regular = "LINESeedSansTHApp-Regular"
    static let thin = "LINESeedSansTHApp-Thin"
    static let bold = "LINESeedSansTHApp-Bold"
    static let extraBold = "LINESeedSansTHApp-ExtraBold"
}

extension Font {
    static let lmHeading1 = Font.custom(LMFont.bold, size: 24)
    static let lmHeading2 = Font.custom(LMFont.bold, size: 20)
    static let lmHeading3 = Font.custom(LMFont.bold, size: 16)
    
    static let lmTitle1 = Font.custom(LMFont.regular, size: 22)
    static let lmTitle2 = Font.custom(LMFont.regular, size: 18)
    static let lmTitle3 = Font.custom(LMFont.regular, size: 14)
    
    static let lmBody1 = Font.custom(LMFont.regular, size: 16)
    static let lmBody2 = Font.custom(LMFont.regular, size: 14)
    static let lmBody3 = Font.custom(LMFont.regular, size: 12)

    static let lmBodyThin1 = Font.custom(LMFont.thin, size: 16)
    static let lmBodyThin2 = Font.custom(LMFont.thin, size: 14)
    static let lmBodyThin3 = Font.custom(LMFont.thin, size: 12)
}
