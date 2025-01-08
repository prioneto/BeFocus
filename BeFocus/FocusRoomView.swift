//
//  FocusRoomView.swift
//  BeFocus
//
//  Created by Dimitris Lolis on 08/01/2025.
//

import SwiftUI

struct FocusRoomView: View {
    @State private var roomName: String = ""
    @State private var isJoined: Bool = false
    @State private var participants: [String] = ["Alice", "Bob"]
    
    var body: some View {
        VStack {
            if isJoined {
                Text("Room: \(roomName)")
                    .font(.title)
                List(participants, id: \.self) { participant in
                    Text(participant)
                }
                Button("Leave Room") {
                    isJoined = false
                    roomName = ""
                }
                .buttonStyle(.bordered)
                .padding()
            } else {
                TextField("Enter Room Name", text: $roomName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button("Join Room") {
                    isJoined = true
                    participants.append("You")
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
        }
        .padding()
    }
}
