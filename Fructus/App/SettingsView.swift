//
//  SettingsView.swift
//  Fructus
//
//  Created by Apptycoons on 03/04/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var fruit : Fruit
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing: 20, content: {
                    Text("Placeholder")
                })//: VSTACK
                .navigationTitle("Settings")
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
            }
        }
    }
}

#Preview {
    SettingsView(fruit: fruitsData[3])
}
