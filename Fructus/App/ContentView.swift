//
//  ContentView.swift
//  Fructus
//
//  Created by Apptycoons on 02/04/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @AppStorage("onboarding") private var isOnboardingViewActive: Bool = false
    @AppStorage("settings") private var isShowingSettings: Bool = false
    let fruits : [Fruit] = fruitsData
    
    var body: some View {
        
        NavigationStack {
            List(){
                ForEach(fruits.shuffled()){fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                    }
                }
            }
            .padding(.horizontal,-8)
            .navigationTitle("Fruits")
            .navigationBarItems(
                leading:
                    Button(action: {
                        isOnboardingViewActive = true
                    }, label: {
                        HStack{
                            Image(systemName : "chevron.left")
                            Text("Back")
                        }
                    }),
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
            )
        }
        
    }
}

#Preview {
    ContentView()
}
