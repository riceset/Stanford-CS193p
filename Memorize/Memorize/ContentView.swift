//
//  ContentView.swift
//  Memorize
//
//  Created by Komeno on 2023/12/10.
//

import SwiftUI

struct ContentView: View {
    var emojis: [String] = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑", "🚒", "🚐", "🚚", "🚛", "🚜", "🚲", "🛴", "🛵", "🏍️", "🛺", "🚔", "🚍", "🚘", "🚖", "🚡", "🚠", "🚟", "🚃", "🚞", "🚝", "🚄", "🚅"]
    
    @State var emojiCount = 24
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                add
                Spacer()
                remove
            }
            .font(.largeTitle)
        }
        .padding()
    }
    
    var add: some View {
        Button {
            if (emojiCount < emojis.count) {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    var remove: some View {
        Button {
            if (emojiCount > 1) {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct CardView: View {
    @State var isFaceUp = true
    var content: String
    
    var body: some View {
        ZStack {
            let rectangle = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                rectangle
                    .fill()
                    .foregroundColor(.white)
                rectangle
                    .strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                rectangle
                    .fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

#Preview {
    Group {
        ContentView()
        CardView(content: "a")
        CardView(content: "a")
    }
}
