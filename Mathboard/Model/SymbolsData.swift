//
//  Symbols.swift
//  Mathboard
//
//  Created by bub on 4/26/23.
//

import Foundation

class Symbol {
    let glyph: String
    let name: String
    let category: String?

    init(glyph: String, name: String, category: String? = nil) {
        self.glyph = glyph
        self.name = name
        self.category = category
    }
}

class SymbolCollection {
    let title: String
    var symbols: [Symbol]

    init(title: String, symbols: [Symbol]) {
        self.title = title
        self.symbols = symbols
    }
}

struct SymbolsData {
    static let allCollections: [SymbolCollection] = [
        basicSymbols,
        setSymbols,
        greekLowercase
    ]
}
