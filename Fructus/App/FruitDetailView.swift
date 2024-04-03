//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Apptycoons on 02/04/2024.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimating : Bool = false
    // MARK: - BODY
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 30) {
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
                        
                        Image(fruit.imageName)
                            .resizable()
                            .scaledToFit()
                            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                            .padding(.vertical, 20)
                            .scaleEffect(isAnimating ? 1.0 : 0.6)
                    } //: ZSTACK
                    .frame(height: 440)
                    
                    VStack(alignment: .leading,spacing: 20){
                        Text(fruit.title)
                            .font(.system(size: 30,weight: .heavy))
                            .foregroundColor(fruit.gradientColors[1])
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn More about \(fruit.title)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .textCase(.uppercase)
                            .font(.subheadline.bold())
                            .foregroundColor(fruit.gradientColors[1])
                            .multilineTextAlignment(.leading)
                        
                        Text(fruit.description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        SourceLinkView()
                    }//: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
            }
            .edgesIgnoringSafeArea(.top)
            }//: NAVIGATION
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData[1])
}
