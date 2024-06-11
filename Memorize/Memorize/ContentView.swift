//
//  ContentView.swift
//  Memorize
//
//  Created by Komeno on 2024/06/11.
//

import SwiftUI

//TODO: Convert into the complex form of the code based on the first week's lecture.

struct ContentView: View {
    var body: some View {
        VStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        if isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 30)
                    .strokeBorder()
                    .foregroundColor(.yellow)
                Text("✏️")
                    .font(.largeTitle)
            }
            .padding()
        } else {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.yellow)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
