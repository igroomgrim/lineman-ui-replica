//
//  LMHomeProfileSectionView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeProfileSectionView: View {
    fileprivate let rightArrowIcon = "chevron.right"
    fileprivate let heartIcon = "heart"
    
    let customerName: String
    let promotionText: String
    let promotionId: String
    let onPromotionTapped: (_ promotionId: String) -> Void
    let onFavoriteTapped: () -> Void
    
    var body: some View {
        VStack {
            HStack() {
                // Left side text content
                Button(action: {
                    onPromotionTapped(promotionId)
                }) {
                    VStack(alignment: .leading) {
                        Text("Hi \(customerName)")
                            .font(.lmFont(type: .regular, size: 14))
                            .foregroundColor(.white)
                        
                        HStack {
                            Text(promotionText)
                                .font(.lmFont(type: .bold, size: 16))
                            Image(systemName: rightArrowIcon)
                                .font(.lmFont(type: .regular, size: 16))
                        }
                        .foregroundColor(.white)
                    }
                }
                
                Spacer()
                
                // Right side heart button - favorite
                HStack {
                    Button(action: {
                        onFavoriteTapped()
                    }) {
                        Image(systemName: heartIcon)
                            .font(.system(size: 18))
                            .foregroundColor(.green)
                            .padding(8)
                            .background(Circle().fill(.white))
                            .shadow(radius: 2)
                    }
                }
                .offset(y: -4)
            }
        }
    }
}

#Preview {
    LMHomeProfileSectionView(customerName: "John Doe", promotionText: "By 1 get 1", promotionId: "p-123", onPromotionTapped: { _ in }, onFavoriteTapped: {})
        .background(Color.gray)
}
