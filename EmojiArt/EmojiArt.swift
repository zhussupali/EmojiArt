//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Zhussupali Salamat on 13.11.2020.
//

import Foundation

struct EmojiArt: Encodable {
    var url : URL
    var emojis = [EmojiInfo]()
    
    struct EmojiInfo: Encodable {
        let x: Int
        let y: Int
        let size: Int
        let text: String
    }
    
    var json : Data? {
        return try? JSONEncoder().encode(self)
    }
    
    init(url: URL, emojis: [EmojiInfo]) {
        self.url = url
        self.emojis = emojis
    }
}
