import SwiftUI

struct FocusRoomView: View {
    @State private var roomName: String = ""
    @State private var isJoined: Bool = false
    @State private var participants: [String] = ["Alice", "Bob", "Chris"]
    
    var body: some View {
        VStack {
            if isJoined {
                VStack {
                    Text("You are in: \(roomName)")
                        .font(.headline)
                        .padding()
                    
                    List(participants, id: \.self) { participant in
                        Label(participant, systemImage: "person.fill")
                    }
                    
                    Button(action: {
                        leaveRoom()
                    }) {
                        Text("Leave Room")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal)
                }
                .transition(.move(edge: .top))
            } else {
                VStack {
                    Text("Join a Focus Room")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                    
                    TextField("Enter Room Name", text: $roomName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button(action: {
                        joinRoom()
                    }) {
                        Text("Join Room")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal)
                    .disabled(roomName.isEmpty)
                    .opacity(roomName.isEmpty ? 0.6 : 1.0)
                }
                .transition(.move(edge: .bottom))
            }
        }
        .animation(.easeInOut, value: isJoined)
        .padding()
    }
    
    private func joinRoom() {
        isJoined = true
        participants.append("You") // Add the user to the participant list
    }
    
    private func leaveRoom() {
        isJoined = false
        roomName = ""
        participants.removeAll(where: { $0 == "You" }) // Remove the user from the list
    }
}
