//
//  LMTheme.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

struct LMTheme {
    struct Colors {
        static let primary: Color = .green
        static let secondary: Color = .blue
        static let textPrimary: Color = .black.opacity(0.7)
        static let textSecondary: Color = .gray
        static let white01: Color = .white
        static let green01: Color = .green
        static let green02: Color = .green.opacity(0.2)
        static let red01: Color = .red
        static let red02: Color = .red.opacity(0.2)
        static let gray01: Color = .gray
        static let gray02: Color = .gray.opacity(0.2)
    }
    
    struct CornerRadius {
        static let small: CGFloat = 4
        static let medium: CGFloat = 8
        static let large: CGFloat = 16
    }
    
    struct Spacing {
        static let small: CGFloat = 8
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
    }
}
