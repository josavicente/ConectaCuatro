//
//  LandscapeGameView.swift
//  ConectaCuatro
//
//  Created by Josafat Vicente Pérez on 15/8/22.
//

import SwiftUI

struct LandscapeGameView: View {
    
    let data = (1...42).map { "Item \($0)" }
    let columns = [
        GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        ScrollView{
            HStack{

                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                    }
                }
                .padding(.horizontal)
                
                VStack{
                    Text("Partida")
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct LandscapeGameView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGameView()
    }
}
