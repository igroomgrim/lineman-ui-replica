//
//  LMFoodPopularMenuButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 7/1/2568 BE.
//

import SwiftUI

struct PopularMenu: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

struct LMFoodPopularMenuButton: View {
    let menu: PopularMenu
    let action: () -> Void
    
    init(_ menu: PopularMenu, action: @escaping () -> Void) {
        self.menu = menu
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 8) {
                // Image
                Image(systemName: menu.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 52, height: 52)
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.1), radius: 2, y: 1)
                    .foregroundStyle(LMColor.gradientGreen)
                
                // Title
                Text(menu.title)
                    .font(.system(size: 12))
                    .fontWeight(.light)
                    .foregroundColor(LMColor.fontSoftBlack)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .frame(width: 58, height: 34, alignment: .top)
            }
            .frame(width: 58)
        }
    }
}

#Preview {
    HStack {
        LMFoodPopularMenuButton(PopularMenu(image: "sparkles", title: "ส้มตำ"), action: {})
        LMFoodPopularMenuButton(PopularMenu(image: "sparkles", title: "ชานมไข่มุก ชาผลไม้"), action: {})
    }
}
