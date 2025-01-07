//
//  LMSplashScreenView.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 7/1/2568 BE.
//

import SwiftUI

struct LMSplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                LMColor.gradientGreen.ignoresSafeArea()
                
                VStack {
                    Image(systemName: "figure.run.circle")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(.white)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.isActive.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    LMSplashScreenView()
}
