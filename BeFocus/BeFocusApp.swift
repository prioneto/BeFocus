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
