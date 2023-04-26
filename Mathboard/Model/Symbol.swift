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

struct SymbolsData {
    static let symbols = [
        Symbol(glyph: "ℝ", name: "Double-struck Capital R", category: "Mathematical Symbols"),
        Symbol(glyph: "ℂ", name: "Double-struck Capital C", category: "Mathematical Symbols"),
        Symbol(glyph: "∎", name: "End of Proof", category: "Mathematical Symbols"),
        Symbol(glyph: "ℚ", name: "Double-struck Capital Q", category: "Mathematical Symbols"),
        Symbol(glyph: "∞", name: "Infinity", category: "Mathematical Symbols"),
        Symbol(glyph: "∈", name: "Element of", category: "Mathematical Symbols"),
        Symbol(glyph: "≡", name: "Identical to", category: "Mathematical Symbols"),
        Symbol(glyph: "=", name: "Equals Sign", category: "Mathematical Symbols"),
        Symbol(glyph: "≠", name: "Not Equal To", category: "Mathematical Symbols"),
        Symbol(glyph: "≈", name: "Almost Equal To", category: "Mathematical Symbols"),
        Symbol(glyph: "∪", name: "Union", category: "Mathematical Symbols"),
        Symbol(glyph: "∩", name: "Intersection", category: "Mathematical Symbols"),
        Symbol(glyph: "∅", name: "Empty Set", category: "Mathematical Symbols"),
        Symbol(glyph: "⊥", name: "Up Tack", category: "Mathematical Symbols"),
        Symbol(glyph: "Φ", name: "Capital Phi", category: "Greek Letters"),
        Symbol(glyph: "∴", name: "Therefore", category: "Mathematical Symbols"),
        Symbol(glyph: "∵", name: "Because", category: "Mathematical Symbols"),
        Symbol(glyph: "÷", name: "Division Sign", category: "Mathematical Symbols"),
        Symbol(glyph: "π", name: "Pi", category: "Greek Letters"),
        Symbol(glyph: "∠", name: "Angle", category: "Mathematical Symbols")
    ]
}
