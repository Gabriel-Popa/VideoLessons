//
//  SearchBarView.swift
//  VideoLessons
//
//  Created by Andrei-Gabriel Popa on 13.11.2022.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    @Binding var searching: Bool
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.white)
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search ..", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                }
            onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
            .foregroundColor(.gray)
            .padding(.leading, 13)
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding()    }
}

