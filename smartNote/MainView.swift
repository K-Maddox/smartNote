//
//  MainView.swift
//  smartNote
//
//  Created by kid maddog on 7/1/2025.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State private var notes = [
        Note(title: "Shopping List", content: "Buy milk, eggs, bread."),
        Note(title: "Meeting Notes", content: "Discuss Q1 targets and budgets.")
    ]
    @State private var showAddNote = false

    var body: some View {
        NavigationView {
            List(notes) { note in
                NavigationLink(destination: DetailView(note: note)) {
                    Text(note.title)
                }
            }
            .navigationTitle("Notes")
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: {
                        showAddNote = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showAddNote) {
                AddNoteView(notes: $notes)
            }
        }
    }
}

