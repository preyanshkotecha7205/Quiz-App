//
//  File.swift
//  Quizzler
//
//  Created by Mustafa Khan on 12/12/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation


class ApiData {
    
    static var quizzes: [[String:Any]] = []
    
    init() {
        
    }
    
    static func fetchData() {
        
        let url = URL(string: "https://opentdb.com/api.php?amount=10&category=9")!
        
        let request = URLRequest(url:url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 10)
        
        
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        
        session.configuration.requestCachePolicy = .reloadIgnoringLocalCacheData
        
        let task = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data,
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                
                //print(dataDictionary)
                
                let response = dataDictionary ["results"] as![[String:Any]]
                
                for value in response {
                    
                    print(value["incorrect_answers"])

                }
                
                
    }
}
        
        task.resume()
}
}
