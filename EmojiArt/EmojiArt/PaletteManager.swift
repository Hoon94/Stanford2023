//
//  PaletteManager.swift
//  EmojiArt
//
//  Created by Daehoon Lee on 5/27/24.
//

import SwiftUI

struct PaletteManager: View {
    
    let stores: [PaletteStore]
    
    @State private var selectedStore: PaletteStore?
    
    var body: some View {
        NavigationSplitView {
            List(stores, selection: $selectedStore) { store in
//                Text(store.name)
                PaletteStoreView(store: store)
                    .tag(store)
            }
        } content: {
            if let selectedStore {
                EditablePaletteList(store: selectedStore)
            }
            Text("Choose a store")
        } detail: {
            Text("Choose a palette")
        }
    }
}

struct PaletteStoreView: View {
    @ObservedObject var store: PaletteStore
    
    var body: some View {
        Text(store.name)
    }
}

#Preview {
    PaletteManager(stores: [])
}
