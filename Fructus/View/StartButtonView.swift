//
//  StartButtonView.swift
//  Fructus
//
//  Created by Apptycoons on 02/04/2024.
//

import SwiftUI

struct StartButtonView: View {
    @State private var isAnimating: Bool = false
    @AppStorage("onboarding") private var isOnboardingViewActive: Bool = true
    
    var body: some View {
        Button(action: {
            isOnboardingViewActive = false
        }, label: {
            HStack{
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.vertical,10)
            .padding(.horizontal,16)
            .foregroundColor(.white)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        })//:Button
        .scaleEffect( isAnimating ? 1.0 : 0.6)
        .onAppear(){
            withAnimation(.easeOut(duration: 1)){
                isAnimating = true
            }
        }
    }
}

#Preview {
    ZStack {
        Color(.blue)
            .ignoresSafeArea()
        StartButtonView()
    }
}
