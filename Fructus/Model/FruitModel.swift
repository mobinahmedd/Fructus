//
//  FruitModel.swift
//  Fructus
//
//  Created by Apptycoons on 02/04/2024.
//

import SwiftUI

// MARK: FRUIT DATA MODEL
struct Fruit : Identifiable {
    var id = UUID() // generates unique id
    var title : String
    var headline: String
    var imageName: String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
}
