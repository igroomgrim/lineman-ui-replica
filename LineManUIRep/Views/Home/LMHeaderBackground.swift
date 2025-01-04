//
//  LMHeaderBackground.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

import SwiftUI

struct LMHeaderBackground: View {
    private let cornerRadius: CGFloat = 16
    private let height: CGFloat = UIScreen.main.bounds.height * 0.368
    
    var body: some View {
        Rectangle()
            .fill(LMColor.gradientGreen)
            .frame(maxWidth: .infinity, maxHeight: height)
            .padding(.top, cornerRadius)
            .cornerRadius(cornerRadius)
            .padding(.top, -cornerRadius)
    }
}

#Preview {
    LMHeaderBackground()
}
