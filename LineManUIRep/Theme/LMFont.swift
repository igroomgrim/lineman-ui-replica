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

enum LMFontType: String {
    case regular = "LINESeedSansTHApp-Regular"
    case thin = "LINESeedSansTHApp-Thin"
    case bold = "LINESeedSansTHApp-Bold"
    case extraBold = "LINESeedSansTHApp-ExtraBold"
}

extension Font {
    static func lmFont(type: LMFontType, size: CGFloat) -> Font {
        return Font.custom(type.rawValue, size: size)
    }
}
