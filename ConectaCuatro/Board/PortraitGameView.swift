//
//  PortraitGameView.swift
//  ConectaCuatro
//
//  Created by Josafat Vicente Pérez on 15/8/22.
//

import SwiftUI

struct PortraitGameView: View {
    
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
            VStack{
                VStack{
                    Text("Partida")
                    Spacer()
                }
                Spacer()
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                    }
                }
                .padding(.horizontal)
                
                
            }
        }
    }
}

struct PortraitGameView_Previews: PreviewProvider {
    static var previews: some View {
        PortraitGameView()
    }
}
