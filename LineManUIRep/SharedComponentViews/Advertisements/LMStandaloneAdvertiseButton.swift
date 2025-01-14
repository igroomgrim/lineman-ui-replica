//
//  LMStandaloneAdvertiseButton.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//

import SwiftUI

struct LMStandaloneAdvertiseButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            AsyncImage(url: URL(string: "https://picsum.photos/296/94")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                LMTheme.Colors.gray02
            }
            .frame(height: 94)
            .frame(maxWidth: .infinity)
        }
        .clipShape(RoundedRectangle(cornerRadius: LMTheme.CornerRadius.radius8))
    }
}

#Preview {
    VStack() {
        LMStandaloneAdvertiseButton(action: {})
    }
    .padding(.horizontal, LMTheme.Spacing.spacing16)
}
