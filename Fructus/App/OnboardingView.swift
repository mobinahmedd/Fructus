//
//  OnboardingView.swift
//  Fructus
//
//  Created by Apptycoons on 02/04/2024.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES
    @State private var fruits: [Fruit] = fruitsData

    // MARK: BODY
    var body: some View {
        
        TabView{
            
            ForEach(fruits[0...5]){fruit in
                FruitCardView(fruit: fruit)
            }//: Loop
            
        }//: TAB VIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}

// MARK: PREVIEW
#Preview {
    OnboardingView()
}
