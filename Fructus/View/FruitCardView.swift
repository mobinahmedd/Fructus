//
//  FruitCardView.swift
//  Fructus
//
//  Created by Apptycoons on 02/04/2024.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                
                Image(fruit.imageName)
                    .resizable()
                    .scaledToFit()
                Text(fruit.title)
                    .padding(.vertical,3)
                
                    .font(.system(size: 42,weight: .heavy))
                    .foregroundColor(.white)
                
                Text(fruit.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .foregroundColor(.white)
                
                StartButtonView()
            }
        }//: ZSTACK
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1.0 : 0.6)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(
                colors: fruit.gradientColors,
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
        .onAppear()
        {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    FruitCardView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 320, height: 640))
    
}
