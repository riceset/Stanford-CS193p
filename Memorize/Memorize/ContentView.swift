//
//  ContentView.swift
//  Memorize
//
//  Created by Komeno on 2023/12/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .padding()
        .foregroundColor(.red)
    }
}

struct CardView: View {
    var isFaceUp = true
    
    var body: some View {
        ZStack {
            let rectangle = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                rectangle
                    .fill()
                    .foregroundColor(.white)
                rectangle
                    .stroke(lineWidth: 3)
                Text("👻")
                    .font(.largeTitle)
            } else {
                rectangle
                    .fill()
            }
        }
    }
}

#Preview {
    ContentView()
}
