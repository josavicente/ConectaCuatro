//
//  ContentView.swift
//  ConectaCuatro
//
//  Created by Josafat Vicente Pérez on 14/8/22.
//

import SwiftUI

struct GameView: View {
    
    
    @State private var orientation = UIDeviceOrientation.unknown
    
    
    var body: some View {
        
        Group {
            if orientation.isPortrait {
                PortraitGameView()
            } else if orientation.isLandscape {
                LandscapeGameView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
