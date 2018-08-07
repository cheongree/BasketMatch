//
//  Member.swift
//  24maker
//
//  Created by Qyun on 07/08/2018.
//  Copyright © 2018 Qyun. All rights reserved.
//

import Foundation

var teams: [Team] = [
    Team(name: "아울스", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1", win: 3, lose: 1),
    Team(name: "토파즈", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2", win: 43, lose: 28),
    Team(name: "MSA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3", win: 32, lose: 32),
    Team(name: "닥터바스켓", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4", win: 13, lose: 3)
]

var players: [Player] = [
    Player(name: "김조던", position: ["1", "3"], location: "서울시 성북구", playerImage: "profile", height: 193, weight: 87),
    Player(name: "박카레", position: ["2"], location: "서울시 강남구", playerImage: "profile", height: 191, weight: 83),
    Player(name: "야오밍", position: ["4", "5"], location: "서울시 성동구", playerImage: "profile", height: 212, weight: 103),
    Player(name: "서브룩", position: ["1", "3", "5"], location: "서울시 중구", playerImage: "profile", height: 194, weight: 90)
]

var matches: [Match] = [ 
    Match(myTeam: Team(name: "아울스", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1", win: 3, lose: 1), matchDate: "201805011350", matchLocation: "서울시 강남구"),
    Match(myTeam: Team(name: "토파즈", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2", win: 43, lose: 28), matchDate: "201805011350", matchLocation: "인천시 서구"),
    Match(myTeam: Team(name: "MSA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3", win: 32, lose: 32), matchDate: "201805011350", matchLocation: "경기도 광명시"),
    Match(myTeam: Team(name: "닥터바스켓", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4", win: 13, lose: 3), matchDate: "201805011350", matchLocation: "강원도 춘천시")
]

var scheduledMatches: [ScheduledMatch] = [
    ScheduledMatch(myteam: Team(name: "아울즈", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1", win: 3, lose: 1), opponentTeam: Team(name: "토파즈", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2", win: 43, lose: 28), matchDate: "201808011530", matchLocation: "성북구 안암동"),
    ScheduledMatch(myteam: Team(name: "토파즈", recruitingPosition: ["2"], location: "인천시 서구", rating: "1300", teamImage: "team2", win: 43, lose: 28), opponentTeam: Team(name: "MSA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3", win: 32, lose: 32), matchDate: "201807031930", matchLocation: "노원구 중계동"),
    ScheduledMatch(myteam: Team(name: "MSA", recruitingPosition: ["4", "5"], location: "경기도 광명시", rating: "1200", teamImage: "team3", win: 32, lose: 32), opponentTeam: Team(name: "닥터바스켓", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4", win: 13, lose: 3), matchDate: "201803051720", matchLocation: "도봉구 방학동"),
    ScheduledMatch(myteam: Team(name: "닥터바스켓", recruitingPosition: ["1", "3", "5"], location: "강원도 춘천시", rating: "1400", teamImage: "team4", win: 13, lose: 3), opponentTeam: Team(name: "아울스", recruitingPosition: ["1", "3"], location: "서울시 강남구", rating: "1000", teamImage: "team1", win: 3, lose: 1), matchDate: "201804061910", matchLocation: "동대문구 제기동")
]

