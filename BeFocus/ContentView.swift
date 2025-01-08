//
//  ContentView.swift
//  BeFocus
//
//  Created by Dimitris Lolis on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FocusRoomView()
                .tabItem {
                    Label("Focus Room", systemImage: "person.3")
                }
            
            TimerView()
                .tabItem {
                    Label("Timer", systemImage: "timer")
                }
            
            ProgressView()
                .tabItem {
                    Label("Progress", systemImage: "chart.bar.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
