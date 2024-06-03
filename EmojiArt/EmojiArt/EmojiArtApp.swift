//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Daehoon Lee on 5/22/24.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    
//    @StateObject var defaultDocument = EmojiArtDocument()
//    @StateObject var paletteStore = PaletteStore(named: "Main")
//    @StateObject var store2 = PaletteStore(named: "Alternate")
//    @StateObject var store3 = PaletteStore(named: "Special")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
//            PaletteManager(stores: [paletteStore, store2, store3])
            EmojiArtDocumentView(document: config.document)
//                .environmentObject(paletteStore)
        }
    }
}
