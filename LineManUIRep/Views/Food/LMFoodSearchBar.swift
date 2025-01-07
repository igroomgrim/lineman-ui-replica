//
//  LMFoodSearchBar.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 7/1/2568 BE.
//

import SwiftUI

struct LMFoodSearchBar: View {
    @Binding var text: String
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack(spacing: 12) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.green)
                    .font(.system(size: 16))
                
                Text(text)
                    .font(.system(size: 12))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                
                Spacer()
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 100)
                    .fill(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 4, y: 2)
            )
        }
        .padding(.top, 2) // for shadow
        .padding(.horizontal, 16)
    }
}

#Preview {
    LMFoodSearchBar(text: .constant("🐔 KFC ใหม่!!! ชุดข้าวร้านลุง ฿129 โค้ดลดเพิ่ม ฿120 🔥"), onTap: {})
}
