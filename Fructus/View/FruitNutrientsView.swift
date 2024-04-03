//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Apptycoons on 03/04/2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit : Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional value per 100g"){
                VStack{
                    ForEach(0..<nutrients.count, id: \.self){item in
                        Divider().padding(.vertical, 2)

                        HStack{
                            Group {
                                Image(systemName: "info.circle")
                                Text(nutrients[item])
                            }
                            .foregroundColor(fruit.gradientColors[1])
                            
                            Spacer()
                            
                            Text(fruit.nutrition[item])
                                .multilineTextAlignment(.trailing)
                        }
                    }
                }
               
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
}
