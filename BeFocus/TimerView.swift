import SwiftUI

struct TimerView: View {
    @State private var timeRemaining = 25 * 60 // 25 minutes
    @State private var isRunning = false
    @State private var timer: Timer? = nil
    
    var body: some View {
        VStack {
            Text("Focus Timer")
                .font(.title)
                .padding()
            
            Text(timeString(from: timeRemaining))
                .font(.system(size: 60, weight: .bold, design: .monospaced))
                .padding()
            
            HStack {
                Button(isRunning ? "Pause" : "Start") {
                    if isRunning {
                        pauseTimer()
                    } else {
                        startTimer()
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(isRunning ? Color.orange : Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("Reset") {
                    resetTimer()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
    
    private func timeString(from seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    private func startTimer() {
        isRunning = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                isRunning = false
                timer?.invalidate()
            }
        }
    }
    
    private func pauseTimer() {
        isRunning = false
        timer?.invalidate()
    }
    
    private func resetTimer() {
        pauseTimer()
        timeRemaining = 25 * 60
    }
}
