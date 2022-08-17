//
//  Player.swift
//  ConectaCuatro
//
//  Created by Josafat Vicente Pérez on 15/8/22.
//

import SwiftUI

struct Player {
    let id: Int
    let jugador: Jugador
    var wins: Int
    
    mutating func increaseWins() {
        self.wins += 1
    }
    
    mutating func resetPlayer() {
        self.wins = 0
    }
}

enum Jugador {
    
    case rojo
    case amarillo
    
    
    init(type: Int16){
        switch type {
        case 0:
            self = .rojo
        case 1:
            self = .amarillo
        default:
            self = .rojo
        }
    }
    
    var description : String {
        switch self {
        case .rojo:
            return "R"
        case .amarillo:
            return "Y"
        }
    }
    var color : UIColor {
        switch self {
        case .rojo:
            return UIColor.red
        case .amarillo:
            return UIColor.orange
        }
    }
    
}
