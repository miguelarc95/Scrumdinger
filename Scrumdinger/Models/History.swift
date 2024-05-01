///**
/**  
History.swift
Scrumdinger
Created by Miguel Cardoso on 01/05/2024.
*/

import Foundation

struct History: Identifiable {
    let id: UUID = UUID()
    let date: Date = Date()
    var attendees: [DailyScrum.Attendee]
}
