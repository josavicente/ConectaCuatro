//
//  GameModel.swift
//  ConectaCuatro
//
//  Created by Josafat Vicente Pérez on 15/8/22.
//

import Foundation


class Game : ObservableObject {
    @Published var player1 : Player
    @Published var player2 : Player
    @Published var board : [BoardItem]
    @Published var juagadorActual : Jugador
    @Published var numGames : Int
    @Published var lastWinner : Player?
    @Published var winner : Player?
    
    
    
    
    
    init(){
        self.player1 = Player(id: 1, jugador: Jugador.rojo, wins: 0)
        self.player2 = Player(id: 2, jugador: Jugador.amarillo, wins: 0)
        self.board = []
        self.juagadorActual = Jugador.rojo
        self.numGames = 0
        self.lastWinner = nil
        self.winner = nil
    }
    
    public func prepareBoard(){
        self.emptyBoard()
    }
    
    public func resetCurrentBoard(){
        self.emptyBoard()
        self.winner = nil
    }
    
    public func resetGame(){
        self.juagadorActual = Jugador.rojo
        self.numGames = 0
        self.lastWinner = nil
        self.winner = nil
        self.emptyBoard()
        self.player1.resetPlayer()
        self.player2.resetPlayer()
    }
    
    public func changePlayer(){
        if  self.juagadorActual == Jugador.rojo {
            self.juagadorActual = Jugador.amarillo
        }else{
            self.juagadorActual = Jugador.rojo
        }
    }
    
    public func emptyBoard(){
        self.board = [BoardItem(id: 1, row: 0, column: 0, player: nil),
                      BoardItem(id: 2, row: 0, column: 1, player: nil),
                      BoardItem(id: 3, row: 0, column: 2, player: nil),
                      BoardItem(id: 4, row: 0, column: 3, player: nil),
                      BoardItem(id: 5, row: 0, column: 4, player: nil),
                      BoardItem(id: 6, row: 0, column: 5, player: nil),
                      BoardItem(id: 7, row: 0, column: 6, player: nil),
                      
                      BoardItem(id: 8, row: 1, column: 0, player: nil),
                      BoardItem(id: 9, row: 1, column: 1, player: nil),
                      BoardItem(id: 10, row: 1, column: 2, player: nil),
                      BoardItem(id: 11, row: 1, column: 3, player: nil),
                      BoardItem(id: 12, row: 1, column: 4, player: nil),
                      BoardItem(id: 13, row: 1, column: 5, player: nil),
                      BoardItem(id: 14, row: 1, column: 6, player: nil),
                      

                      BoardItem(id: 15, row: 2, column: 0, player: nil),
                      BoardItem(id: 16, row: 2, column: 1, player: nil),
                      BoardItem(id: 17, row: 2, column: 2, player: nil),
                      BoardItem(id: 18, row: 2, column: 3, player: nil),
                      BoardItem(id: 19, row: 2, column: 4, player: nil),
                      BoardItem(id: 20, row: 2, column: 5, player: nil),
                      BoardItem(id: 21, row: 2, column: 6, player: nil),

                      BoardItem(id: 22, row: 3, column: 0, player: nil),
                      BoardItem(id: 23, row: 3, column: 1, player: nil),
                      BoardItem(id: 24, row: 3, column: 2, player: nil),
                      BoardItem(id: 25, row: 3, column: 3, player: nil),
                      BoardItem(id: 26, row: 3, column: 4, player: nil),
                      BoardItem(id: 27, row: 3, column: 5, player: nil),
                      BoardItem(id: 28, row: 3, column: 6, player: nil),

                      BoardItem(id: 29, row: 4, column: 0, player: nil),
                      BoardItem(id: 30, row: 4, column: 1, player: nil),
                      BoardItem(id: 31, row: 4, column: 2, player: nil),
                      BoardItem(id: 32, row: 4, column: 3, player: nil),
                      BoardItem(id: 33, row: 4, column: 4, player: nil),
                      BoardItem(id: 34, row: 4, column: 5, player: nil),
                      BoardItem(id: 35, row: 4, column: 6, player: nil),

                      BoardItem(id: 36, row: 5, column: 0, player: nil),
                      BoardItem(id: 37, row: 5, column: 1, player: nil),
                      BoardItem(id: 38, row: 5, column: 2, player: nil),
                      BoardItem(id: 39, row: 5, column: 3, player: nil),
                      BoardItem(id: 40, row: 5, column: 4, player: nil),
                      BoardItem(id: 41, row: 5, column: 5, player: nil),
                      BoardItem(id: 42, row: 5, column: 6, player: nil)]

    }
}
