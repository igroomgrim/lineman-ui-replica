//
//  LMDealCard.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 2/1/2568 BE.
//

import SwiftUI

struct LMDealCard: View {
    enum CardSize {
        case big
        case medium
        case small
    }
    
    let size: CardSize
    let title: String
    let subTitle: String
    
    var body: some View {
        VStack {
            switch size {
            case .big:
                bigCard()
            case .medium:
                mediumCard()
            case .small:
                smallCard()
            }
        }
    }
}
    
extension LMDealCard {
    func bigCard() -> some View {
        Button(action: {}) {
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
            .background(LMColor.gradientGreen)
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
        }
    }
    
    func mediumCard() -> some View {
        Button(action: {}) {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .padding(.leading, 16)
                Text(subTitle)
                    .font(.subheadline)
                    .padding(.leading, 16)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 124)
            .background(LMColor.gradientGreen)
            .foregroundColor(.white)
            .cornerRadius(8)
            .shadow(color: .gray.opacity(0.4), radius: 4)
        }
    }
    
    func smallCard() -> some View {
        Button(action: {}) {
            VStack(alignment: .leading, spacing: 0) {
                // Image section
                ZStack(alignment: .topLeading) {
                    Image("")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 120)
                        .clipped()
                        .background(LMColor.gradientGreen)
                        .overlay {
                            Image(systemName: "photo.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.black)
                                .opacity(0.5)
                        }
                }
                
                // Text content section
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 12))
                        .bold()
                        .foregroundColor(LMColor.fontSoftBlack)
                    
                    
                        Text(subTitle)
                            .font(.caption)
                            .foregroundColor(.gray)
                    
                }
                .padding(12)
            }
            .frame(width: 160)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
            .padding(.bottom, 2)
        }
    }
}

#Preview {
    LMDealCard(size: .big, title: "Deal Title", subTitle: "Deal Subtitle")
    LMDealCard(size: .medium, title: "Deal Title", subTitle: "Deal Subtitle")
    LMDealCard(size: .small, title: "MEGA DEALS!", subTitle: "ลดราคาสูงสุด 50%")
}
