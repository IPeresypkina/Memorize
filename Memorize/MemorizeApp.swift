//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ирина Пересыпкина on 15.07.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
//            ContentTask1View()
        }
    }
}
