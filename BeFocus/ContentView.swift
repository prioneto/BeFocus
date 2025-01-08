import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FocusRoomView()
                .tabItem {
                    Label("Focus Room", systemImage: "person.3.fill")
                }
            
            TimerView()
                .tabItem {
                    Label("Timer", systemImage: "clock.fill")
                }
            
            ProgressView()
                .tabItem {
                    Label("Progress", systemImage: "chart.bar.fill")
                }
        }
        .accentColor(.purple) // Add a theme color
    }
}

#Preview {
    ContentView()
}
