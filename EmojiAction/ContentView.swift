//
//  ContentView.swift
//  EmojiAction
//
//  Created by Jun.Mac on 2022/07/18.
//

import ConfettiSwiftUI
import SwiftUI

struct Emoji: Hashable {
    var emoticon: String
    var count: Int = 0
}

struct ContentView: View {
    
    @State private var counter: Int = 0
    @State var emoji = [
        Emoji(emoticon: "👏"),
        Emoji(emoticon: "😮"),
        Emoji(emoticon: "🎉"),
        Emoji(emoticon: "🔥"),
        Emoji(emoticon: "🤔"),
        Emoji(emoticon: "👍"),
    ]
    var body: some View {
        
        HStack {
            TestView(emoji: $emoji[0])
            TestView(emoji: $emoji[1])
            TestView(emoji: $emoji[2])
            TestView(emoji: $emoji[3])
            TestView(emoji: $emoji[4])
            TestView(emoji: $emoji[5])
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
