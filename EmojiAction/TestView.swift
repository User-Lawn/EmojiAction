//
//  TestView.swift
//  EmojiAction
//
//  Created by Jun.Mac on 2022/07/19.
//
import ConfettiSwiftUI
import SwiftUI

struct TestView: View {
    @Binding var emoji: Emoji
 
    var body: some View {
        Button(action: {
            emoji.count += 1
        }) {
            Text(emoji.emoticon)
                .font(.system(size: 30))
        }
        .confettiCannon(counter: $emoji.count, num: 1, confettis: [.text(emoji.emoticon)], confettiSize: 20.0, rainHeight: 200.0)
        
    }
}
