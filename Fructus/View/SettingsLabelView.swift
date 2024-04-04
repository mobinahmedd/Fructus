//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Apptycoons on 04/04/2024.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText : String
    var labelIcon : String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelIcon)
        }
        .bold()
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelIcon: "info.circle")
}
