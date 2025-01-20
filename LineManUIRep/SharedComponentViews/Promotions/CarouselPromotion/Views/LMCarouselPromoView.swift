//
//  LMCarouselPromoView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

struct LMCarouselPromoView: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                ZStack {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: UIScreen.main.bounds.width * 0.4)
                        .foregroundColor(.black)
                        .opacity(0.5)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 224)
            .background(LMTheme.Colors.gradient01)
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
        }
    }
}

#Preview {
    LMCarouselPromoView(action: {})
}
