//
//  Note.swift
//  smartNote
//
//  Created by kid maddog on 7/1/2025.
//

import Foundation


struct Note: Identifiable {
    let id = UUID()
    var title: String
    var content: String
}
