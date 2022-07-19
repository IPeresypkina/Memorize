//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ирина Пересыпкина on 19.07.2022.
//

import SwiftUI

class EmojiMemoryGame {
    
    static let emojis = ["🚗", "🚌", "🚓", "🚲", "🚂", "✈️", "🛶", "🚃", "🛴", "🏍"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
}
