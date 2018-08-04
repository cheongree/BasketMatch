//
//  structFor.swift
//  24maker
//
//  Created by cscoi021 on 2018. 8. 1..
//  Copyright © 2018년 Qyun. All rights reserved.
//

import UIKit
import Foundation

struct Match { // 매칭을 구하는 중인 경기
    var myTeam: Team
    var matchDate: String
    var matchLocation: String
    
    func matchDay() -> String {
        return String(self.matchDate[..<self.matchDate.index(self.matchDate.startIndex, offsetBy: 8)])
    }
}

struct ScheduledMatch { // 확정된 경기
    var myteam : Team
    var opponentTeam: Team
    var matchDate: String
    var matchLocation: String
    
    func matchDay() -> String {
        return String(self.matchDate[..<self.matchDate.index(self.matchDate.startIndex, offsetBy: 8)])
    }
}

struct MatchResult { // 치러진 경기의 결과를 위한 struct
    var myteam : Team
    var opponentTeam: Team
    var matchDate: String
    var matchLocation: String
    
    func matchDay() -> String {
        return String(self.matchDate[..<self.matchDate.index(self.matchDate.startIndex, offsetBy: 8)])
    }
    
}

struct Team { // 팀
    var name: String
    var recruitingPosition: [String]
    var location: String
    var rating: String
    var teamImage: String = ""
    var win: Int
    var lose: Int
    
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

struct Player { // 플레이어
    var name: String
    var position: [String]
    var location: String
    var playerImage: String
    var height: Int
    var weight: Int
    
    
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
