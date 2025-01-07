//
//  AddNoteView.swift
//  smartNote
//
//  Created by kid maddog on 7/1/2025.
//

import Foundation
import SwiftUI

struct AddNoteView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var notes: [Note]
    @State private var title = ""
    @State private var content = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                TextEditor(text: $content)
                    .frame(height: 200)
            }
            .navigationTitle("Add Note")
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .automatic) {
                    Button("Save") {
                        let newNote = Note(title: title, content: content)
                        notes.append(newNote)
                        dismiss()
                    }
                }
            }
        }
    }
}

