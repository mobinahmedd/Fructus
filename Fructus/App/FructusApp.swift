//
//  FructusApp.swift
//  Fructus
//
//  Created by Apptycoons on 02/04/2024.
//

import SwiftUI

@main
struct FructusApp: App {
    // MARK: - PROPERTIES
    @AppStorage("onboarding") private var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isOnboardingViewActive {
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
