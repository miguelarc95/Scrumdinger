//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Miguel Cardoso on 25/04/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
