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
                    .font(.headline)
            }
            .padding()
            
            HStack {
                Text("Total Focus Hours:")
                Spacer()
                Text(String(format: "%.1f hours", totalFocusHours))
                    .font(.headline)
            }
            .padding()
            
            Spacer()
            
            Circle()
                .trim(from: 0.0, to: CGFloat(completedSessions) / 10.0)
                .stroke(Color.blue, lineWidth: 20)
                .frame(width: 150, height: 150)
                .overlay(
                    Text("\(completedSessions)/10")
                        .font(.headline)
                )
                .padding()
        }
        .padding()
    }
}
