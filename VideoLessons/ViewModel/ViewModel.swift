//
//  ViewModel.swift
//  VideoLessons
//
//  Created by Andrei-Gabriel Popa on 12.11.2022.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var lessons = [Lesson]()
    
    init() {
        
        getRemoteData()
    }
    
    func getRemoteData() {
        
        let urlString = "https://codewithchris.github.io/Module5Challenge/Data.json"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
        
        let request = URLRequest(url: url!)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            guard error == nil else {
                return
            }
            do {
                
                let decoder = JSONDecoder()
                
                let lessons = try decoder.decode([Lesson].self, from: data!)
                
                DispatchQueue.main.async {
                    self.lessons = lessons
                }
            }
            catch {
                
                print("\(error)")
            }
        }
        dataTask.resume()
    }
}
