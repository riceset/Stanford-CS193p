//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Komeno on 2023/12/20.
//

import SwiftUI

class EmojiMemoryGame {
    private var model =
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { (index: Int) -> String in
            return "👻"
        })
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
