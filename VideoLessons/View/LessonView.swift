//
//  LessonView.swift
//  VideoLessons
//
//  Created by Andrei-Gabriel Popa on 12.11.2022.
//

import SwiftUI
import AVKit

struct LessonView: View {
    
    let lessons: Lesson
    let aspectRatio: CGFloat = 478 / 849

    
    var body: some View {
        
        let url = URL(string: lessons.url)
        
        VStack {
            Text("\(lessons.title)")
                .bold()
                .font(.largeTitle)
            
            GeometryReader { geo in
                VideoPlayer(player: AVPlayer(url: url! ))
                    .frame(height: geo.size.width * aspectRatio)
            }
            }
        }
    }

