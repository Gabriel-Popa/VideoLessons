//
//  VideoLessonsApp.swift
//  VideoLessons
//
//  Created by Andrei-Gabriel Popa on 12.11.2022.
//

import SwiftUI

@main
struct VideoLessons: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ViewModel())
        }
    }
}
