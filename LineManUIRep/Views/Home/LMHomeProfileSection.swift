//
//  LMHomeProfileSection.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHomeProfileSection: View {
    fileprivate let customerName: String
    fileprivate let promotionText: String
    fileprivate let rightArrowIcon = "chevron.right"
    
    @Binding var isProfilePressed: Bool
    @Binding var isFavoritePressed: Bool
    
    init(
        customerName: String,
        promotionText: String,
        isProfilePressed: Binding<Bool> = .constant(false),
        isFavoritePressed: Binding<Bool> = .constant(false)) {
        self.customerName = customerName
        self.promotionText = promotionText
        self._isProfilePressed = isProfilePressed
        self._isFavoritePressed = isFavoritePressed
    }
    
    var body: some View {
        VStack {
            HStack() {
                // Left side text content
                Button(action: {
                    isProfilePressed = true
                }) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Hi \(customerName)")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(.white)
                        
                        HStack {
                            Text(promotionText)
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                            Image(systemName: rightArrowIcon)
                                .font(.system(size: 16))
                        }
                        .foregroundColor(.white)
                    }
                }
                
                Spacer()
                
                // Right side heart button
                HStack {
                    Button(action: {
                        isFavoritePressed = true
                    }) {
                        Image(systemName: "heart")
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
    LMHomeProfileSection(customerName: "Anak", promotionText: "Every Meal Start ฿49", isProfilePressed: .constant(false), isFavoritePressed: .constant(false))
        .background(Color.gray)
}
