//
//  FruitRowView.swift
//  Fructus
//
//  Created by Apptycoons on 02/04/2024.
//

import SwiftUI

struct FruitRowView: View {
    
    
    
    // MARK: - PROPERTIES
    var fruit : Fruit
    @State private var isAnimating : Bool = false
    
    // MARK: - BODY
    var body: some View {
        
        
        HStack(spacing :3){
            Image(fruit.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80,alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(.linearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            Spacer()
            
            VStack(spacing:0){
                Text(fruit.title)
                    .font(.system(size: 25,weight: .heavy))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(fruit.headline)
                    .multilineTextAlignment(.leading)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }//: VStack
        }//: HSTACK
         //        .padding(.horizontal)
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity,alignment: .center)
        .opacity(isAnimating ? 1 : 0)
        //        .border(Color.black, width: 1)
        .listRowInsets(.none)
        .onAppear(){
            withAnimation(.easeOut(duration: 1)){
                isAnimating = true
            }
        }
    }
    
}

// MARK: - PREVIEW
#Preview {
    FruitRowView(fruit: fruitsData[2])
        .previewLayout(.sizeThatFits)
        .padding()
}
