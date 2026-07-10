//
//  Player.swift
//  ScoreKeeper
//
//  Created by Kobayashi Daigo on 2026/07/10.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}
