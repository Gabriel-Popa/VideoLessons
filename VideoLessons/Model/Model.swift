//
//  Model.swift
//  VideoLessons
//
//  Created by Andrei-Gabriel Popa on 12.11.2022.
//

import Foundation

struct Lesson: Decodable, Identifiable {
    
    var id: Int
    var title: String
    var url: String
}
