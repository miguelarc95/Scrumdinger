///**
/**  
ScrumView.swift
Scrumdinger
Created by Miguel Cardoso on 26/04/2024.
*/

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums, id: \.title) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
