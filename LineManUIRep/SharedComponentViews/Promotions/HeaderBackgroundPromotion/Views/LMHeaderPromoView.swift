//
//  LMHeaderPromoView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

struct LMHeaderPromoView: View {
    private let height: CGFloat = UIScreen.main.bounds.height * 0.368 // 36.8% of screen height
    
    var body: some View {
        Rectangle()
            .fill(LMTheme.Colors.gradient01)
            .frame(maxWidth: .infinity, maxHeight: height)
            .clipShape(
                RoundedCorner(
                    radius: LMTheme.CornerRadius.radius20,
                    corners: [.bottomLeft, .bottomRight]
                )
            )
    }
}

private struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    LMHeaderPromoView()
}
