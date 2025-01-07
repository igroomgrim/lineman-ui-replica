//
//  LMFoodView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 7/1/2568 BE.
//

import SwiftUI

struct LMFoodView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 0) {
            LMFoodNavigationBar(onBackTapped: {
                dismiss()
            })
            
            ScrollView {
                LMFoodSearchBar(text: .constant("🐔 KFC ใหม่!!! ชุดข้าวร้านลุง ฿129 โค้ดลดเพิ่ม ฿120 🔥"), onTap: {})
                
                LMFoodPopularMenusSection()
                    .padding(.vertical)
            }
        }
    }
}

#Preview {
    LMFoodView()
}
