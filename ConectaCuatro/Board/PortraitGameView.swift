//
//  PortraitGameView.swift
//  ConectaCuatro
//
//  Created by Josafat Vicente Pérez on 15/8/22.
//

import SwiftUI

struct PortraitGameView: View {
    
    @ObservedObject var game : Game = Game()
    
    var body: some View {
            ScrollView{
                VStack{
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

struct PortraitGameView_Previews: PreviewProvider {
    static var previews: some View {
        PortraitGameView()
    }
}

struct TitleView: View {
    
    @ObservedObject var game : Game
    
    var body: some View {
        HStack(){
            Circle()
                .frame(width: 50, height: 50)
                .overlay{
                    Image(systemName: "dpad")
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
            Text("Partida")
                .font(.system(.title, design: .rounded))
            
            Spacer()
        }
        .padding()
    }
}

struct PlayerDetailView: View {
    
    @ObservedObject var game : Game
    
    var body: some View {
        HStack{
            VStack{
                HStack{
                    Image(systemName: "person.fill")
                    Text("Jugador 1")
                    Image(systemName: game.juagadorActual == Jugador.rojo ? "star.fill" : "star")
                }
                .foregroundColor(Color(Jugador.rojo.color))
                .font(.system(.title2, design: .rounded))
                Text(String(game.player1.wins))
            }
            Spacer()
            VStack{
                HStack{
                    Image(systemName: "person.fill")
                    Text("Jugador 2")
                    Image(systemName: game.juagadorActual == Jugador.amarillo ? "star.fill" : "star")
                }
                .foregroundColor(Color(Jugador.amarillo.color))
                .font(.system(.title2, design: .rounded))
                Text(String(game.player2.wins))
                
            }
        }
        .padding()
    }
}

struct BoardView: View {
    
    @ObservedObject var game : Game
    let columns = [
        GridItem(.flexible(), spacing: 20),
               GridItem(.flexible(), spacing: 20),
               GridItem(.flexible(), spacing: 20),
               GridItem(.flexible(), spacing: 20),
               GridItem(.flexible(), spacing: 20),
               GridItem(.flexible(), spacing: 20),
               GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        ZStack{
            Color(.blue)
                .cornerRadius(25)
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(game.board) { item in
                    HStack{
                        Circle()
                            .foregroundColor(Color(item.player?.jugador.color ?? .white))
                    }.onTapGesture {
                        game.changePlayer()                    }
                }
            }
            .padding()
        }
        
        .padding(.horizontal)
    }
    
}
