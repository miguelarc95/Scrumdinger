//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Miguel Cardoso on 25/04/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
