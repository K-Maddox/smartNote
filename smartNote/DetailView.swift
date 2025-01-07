//
//  DetailView.swift
//  smartNote
//
//  Created by kid maddog on 7/1/2025.
//

import Foundation
import SwiftUI

struct DetailView: View {
    let note: Note

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(note.title)
                .font(.largeTitle)
                .bold()
            Text(note.content)
                .font(.body)
            Spacer()
        }
        .padding()
        .navigationTitle("Note Detail")
    }
}
