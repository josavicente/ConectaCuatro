//
//  LandscapeGameView.swift
//  ConectaCuatro
//
//  Created by Josafat Vicente Pérez on 15/8/22.
//

import SwiftUI

struct LandscapeGameView: View {
    
    @ObservedObject var game : Game = Game()
    
    var body: some View {
            ScrollView{
                HStack{
                        TitleView(game: game)
                        PlayerDetailView(game: game)
                        Spacer()
                        BoardView(game: game)
                }
            }.onAppear {
                game.emptyBoard()
            }
        
    }
}

struct LandscapeGameView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGameView()
    }
}
