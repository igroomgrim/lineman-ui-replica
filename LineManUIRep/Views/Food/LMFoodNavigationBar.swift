//
//  LMFoodNavigationBar.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 7/1/2568 BE.
//

import SwiftUI

struct LMFoodNavigationBar: View {
    let onBackTapped: () -> Void
    
    var body: some View {
        HStack {
            // Back button
            Button(action: onBackTapped) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
            }
            
            ZStack {
                Circle()
                    .fill(.green.opacity(0.2))
                    .frame(width: 28)
                
                Image(systemName: "house")
                    .foregroundStyle(.green)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            }
            
            // Location info
            VStack(alignment: .leading) {
                Text("Deliver to")
                    .font(.system(size: 10))
                    .fontWeight(.light)
                    .foregroundColor(LMColor.fontSoftBlack)
                Text("PeonyBake Coffee Shop")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
            }
            
            Spacer()
            
            // Favorite button
            Button(action: { }) {
                Image(systemName: "heart")
                    .foregroundColor(LMColor.fontSoftBlack)
            }
        }
        .padding()
        .background(Color.white)
    }
}

#Preview {
    LMFoodNavigationBar(onBackTapped: {})
}

