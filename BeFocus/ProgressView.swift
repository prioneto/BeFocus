//
//  ProgressView.swift
//  BeFocus
//
//  Created by Dimitris Lolis on 08/01/2025.
//

import SwiftUI

struct ProgressView: View {
    @State private var completedSessions: Int = 5
    @State private var totalFocusHours: Double = 12.5
    
    var body: some View {
        VStack {
            Text("Your Progress")
                .font(.title)
                .padding()
            
            HStack {
                Text("Completed Sessions:")
                Spacer()
                Text("\(completedSessions)")
            }
            .padding()
            
            HStack {
                Text("Total Focus Hours:")
                Spacer()
                Text(String(format: "%.1f hours", totalFocusHours))
            }
            .padding()
            
            Spacer()
        }
        .padding()
    }
}
