//
//  BeFocusApp.swift
//  BeFocus
//
//  Created by Dimitris Lolis on 08/01/2025.
//

import SwiftUI

@main
struct BeFocusApp: App {
    @StateObject private var focusData = FocusData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(focusData)
        }
    }
}
