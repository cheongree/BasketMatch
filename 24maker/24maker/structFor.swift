//
//  structFor.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 1..
//  Copyright © 2018년 Qyun. All rights reserved.
//
import UIKit
import Foundation

struct Match {
    var myteam : Team
    var oppenentTeam: Team
    var matchDate: String
    var matchLocation: String
    
    func matchDay() -> String {
        return String(self.matchDate[..<self.matchDate.index(self.matchDate.startIndex, offsetBy: 8)])
    }
}

struct Team {
    var name: String
    var recruitingPosition: [String]
    var location: String
    var rating: String
    var teamImage: String = ""
    
    func positionPrint() -> String {
        let result = self.recruitingPosition.map({pose -> String in
            var result: String
            switch pose {
            case "1": result = "PG"
            case "2": result = "SG"
            case "3": result = "SF"
            case "4": result = "PF"
            case "5": result = "C"
            default: result = ""
            }
            return result
        })
        return result.joined(separator: ",")
    }
}

struct Player {
    var name: String
    var position: [String]
    var location: String
    var playerImage: String
    
    func positionPrint() -> String {
        let result = self.position.map({pose -> String in
            var result: String
            switch pose {
            case "1": result = "PG"
            case "2": result = "SG"
            case "3": result = "SF"
            case "4": result = "PF"
            case "5": result = "C"
            default: result = ""
            }
            return result
        })
        return result.joined(separator: ",")
    }
}
