//
//  HomeView.swift
//  VideoLessons
//
//  Created by Andrei-Gabriel Popa on 12.11.2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ViewModel
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        
        
        NavigationView{
            
            VStack (alignment: .leading) {
                SearchBarView(searchText: $searchText, searching: $searching)
                
                List {
                    ForEach(model.lessons) { video in
                        
                        NavigationLink {
                            LessonView(lessons: video)
                        } label: {
                            Text(video.title)
                            
                        }
                        .navigationTitle(searching ? "Searching" : "All videos")
                    }
                }
            }
            .toolbar {
                if searching {
                    Button("Cancel") {
                        searchText = ""
                        withAnimation {
                            searching = false
                        }
                    }
                }
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
