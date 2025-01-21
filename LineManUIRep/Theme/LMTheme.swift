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
        static let green02: Color = .green.opacity(0.1)
        static let red01: Color = .red
        static let red02: Color = .red.opacity(0.1)
        static let gray01: Color = .gray
        static let gray02: Color = .gray.opacity(0.1)
        static let gradient01: LinearGradient = LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .leading, endPoint: .trailing)
    }
    
    struct CornerRadius {
        static let radius4: CGFloat = 4
        static let radius8: CGFloat = 8
        static let radius12: CGFloat = 12
        static let radius16: CGFloat = 16
        static let radius20: CGFloat = 20
        static let radius24: CGFloat = 24
        static let radius32: CGFloat = 32
    }
    
    struct Spacing {
        static let spacing4: CGFloat = 4
        static let spacing8: CGFloat = 8
        static let spacing12: CGFloat = 12
        static let spacing16: CGFloat = 16
        static let spacing20: CGFloat = 20
        static let spacing24: CGFloat = 24
        static let spacing32: CGFloat = 32
    }
    
    struct Padding {
        static let padding8: CGFloat = 8
        static let padding12: CGFloat = 12
        static let padding16: CGFloat = 16
        static let padding20: CGFloat = 20
        static let padding24: CGFloat = 24
        static let padding32: CGFloat = 32
    }
}
