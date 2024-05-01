///**
/**  
ScrumView.swift
Scrumdinger
Created by Miguel Cardoso on 26/04/2024.
*/

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }.sheet(isPresented: $isPresentingNewScrumView, content: {
            NewScrumSheet(
                isPresentingNewScrumView: $isPresentingNewScrumView,
                scrums: $scrums)
        })
    }
}

#Preview {
    ScrumsView(scrums: .constant(DailyScrum.sampleData))
}
