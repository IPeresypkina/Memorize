//
//  ContentTask1View.swift
//  Memorize
//
//  Created by Ирина Пересыпкина on 16.07.2022.
//

import SwiftUI

struct ContentTask1View: View {
    @State var emojis = ["🚗", "🚌", "🚓", "🚲", "🚂", "✈️", "🛶", "🚃", "🛴", "🏍"]
    @State var emojicount = 10
    
    var body: some View {
        VStack {
            ZStack {
                Text("Memorize!").font(.largeTitle)
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojicount], id: \.self) { emoji in
                        CardTask1View(content: emoji).aspectRatio(2/3, contentMode: .fill)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                vehicles
                Spacer()
                pets
                Spacer()
                weathers
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var vehicles: some View {
        VStack {
            Button {
                let allEmojis: Array<String> = ["🚗", "🚌", "🚓", "🚲", "🚂", "✈️", "🛶", "🚃", "🛴", "🏍"]
                emojis = allEmojis.shuffled()
            } label: {
                Image(systemName: "car")
            }.font(.largeTitle)
            Text("Vehicles").foregroundColor(.blue)
        }
    }
    var pets: some View {
        VStack {
            Button {
                let allEmojis: Array<String> = ["🐶", "🐱", "🐭", "🐰", "🦊", "🐻", "🐨", "🐷", "🐸", "🐻‍❄️"]
                emojis = allEmojis.shuffled()
            }
            label: {
                Image(systemName: "hare")
            }.font(.largeTitle)
            Text("Pets").foregroundColor(.blue)
        }
    }
    var weathers: some View {
        VStack {
            Button {
                let allEmojis: Array<String> = ["☀️", "⛅️", "☁️", "🌧", "⛈", "❄️", "🌈", "🌪", "🌨", "🌙"]
                emojis = allEmojis.shuffled()
            }
            label: {
                Image(systemName: "cloud.sun")
            }.font(.largeTitle)
            Text("Weathers").foregroundColor(.blue)
        }
    }
}

struct CardTask1View: View {
    var content:String
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentTask1View_Previews: PreviewProvider {
    static var previews: some View {
        ContentTask1View()
            .preferredColorScheme(.light)
        ContentTask1View()
            .preferredColorScheme(.dark)
    }
}

