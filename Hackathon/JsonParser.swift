//
//  JsonParser.swift
//  Hackathon
//
//  Created by Anshula Singh on 7/6/17.
//  Copyright © 2017 Connar Wang. All rights reserved.
//

import Foundation

import UIKit


class JsonParser {
    
    static func parse(data: Data) {
        guard let json = checkValidJson(data: data) else {
            print("Unable to convert data to JSON")
            return
        }
       
        guard let routesArr = json["routes"] as? [Any] else {return}
        
        guard let routesDict = routesArr[0] as? [String: Any] else {return}
        
        guard let legsArray = routesDict["legs"] as? [Any] else {return}
        
        guard let legsDist = legsArray[0] as? [String: Any] else {return}
        
        guard let distDict = legsDist["distance"] as? [String: Any] else {return}
        
        guard let distance = distDict["text"] as? String else {return }
        
        print(distance)
        

        
    }
    
    static func checkValidJson(data: Data) -> [String: Any]? {
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json
            
        }
        catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }

}

