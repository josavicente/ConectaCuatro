//
//  BoardItem.swift
//  ConectaCuatro
//
//  Created by Josafat Vicente Pérez on 15/8/22.
//

import Foundation


struct BoardItem : Identifiable {

    var id : Int
    var row : Int
    var column : Int
    var player : Player?
    
    mutating func setPlayer(_ jugador: Player){
        self.player = jugador
    }
}
