
import Foundation

class FocusData: ObservableObject {
    @Published var completedSessions: Int = 0
    @Published var totalFocusHours: Double = 0.0
    
    func addSession(duration: Double) {
        completedSessions += 1
        totalFocusHours += duration
    }
}
