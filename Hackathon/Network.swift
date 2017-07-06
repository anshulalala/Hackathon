//
//  Network.swift
//  Hackathon
//
//  Created by Anshula Singh on 7/6/17.
//  Copyright © 2017 Connar Wang. All rights reserved.
//

import Foundation

//    ex: https://maps.googleapis.com/maps/api/directions/json?origin=Disneyland&destination=Universal+Studios+Hollywood4&key=YOUR_API_KEY

class Network {
    
    //MARK: - properties
    static var orig = "Make School"
    static var dest = "Bill Graham Civic Auditorium"
    static let baseURL = "https://maps.googleapis.com/maps/api/directions/json?origin="
    static let APIKey = "AIzaSyCReqavDLlwHC6jMyEb5a1uKms6D8wcsKk"
    
    
    //TODO: add origin and destination parameter later, this is just a test for rn
    static func getDirection() {
        
        let longURL = baseURL + orig + "&destination=" + dest + "&key=" + APIKey
        
        if let validURLString = longURL.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) {
            
            guard let validURL = URL(string: validURLString) else {
                print("fail to convert to a valid url")
                return
            }
            
            let session = URLSession.shared
            
            //the completion handler code runs after it's done downloading the json object
            let dataTask = session.dataTask(with: validURL, completionHandler: { (data, response , error) in
                
                guard error == nil else {
                    print("there's an error with the download request")
                    return
                }
                
                guard data != nil else {
                    print("there's no data")
                    return
                }
                
                // this will execute if there's no error
                
            })
            
            dataTask.resume()
        }
    }
    
}
