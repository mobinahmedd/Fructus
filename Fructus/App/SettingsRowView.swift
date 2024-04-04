//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Apptycoons on 04/04/2024.
//

import SwiftUI

struct SettingsRowView: View {
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    var body: some View {
        VStack(spacing: 14){
            Divider().padding(.vertical, 4)

            HStack{
                Text(name).foregroundColor(Color.gray)
                
                Spacer()
                
                if (content != nil) {
                    Text(content!)
                }else if (linkLabel != nil && linkDestination != nil) {
                    Link(destination: URL(string: "https://\(linkDestination!)")!, label: {
                        HStack {
                            Text(linkLabel!)
                            Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                        }
                    })
                }else{
                    EmptyView()
                }
                
            }
            .font(.system(size: 15))
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
//            .padding()
        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
//            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
//            .padding()
    }}
