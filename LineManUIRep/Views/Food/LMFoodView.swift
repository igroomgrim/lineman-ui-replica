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
        VStack {
            LMFoodNavigationBar(onBackTapped: {
                dismiss()
            })
            
            ScrollView {
                
            }
        }
    }
}

#Preview {
    LMFoodView()
}
