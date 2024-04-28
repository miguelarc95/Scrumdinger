///**
/**  
MeetingHeaderView.swift
Scrumdinger
Created by Miguel Cardoso on 28/04/2024.
*/

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    
    private var totalSeconds: Int {
        secondsElapsed + secondsRemaining
    }
    
    private var progress: Double {
            guard totalSeconds > 0 else { return 1 }
            return Double(secondsElapsed) / Double(totalSeconds)
        }
    
    private var remainingMinutes: Int {
        secondsRemaining / 60
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.bottomhalf.fill")
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Time remaining"))
        .accessibilityValue(Text("\(remainingMinutes) minutes"))
    }
}

#Preview {
    MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180)
        .previewLayout(.sizeThatFits)
}
