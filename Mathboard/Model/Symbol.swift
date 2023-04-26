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
        Symbol(glyph: "∎", name: "End of Proof"),
        Symbol(glyph: "ℕ", name: "Double-struck Capital N (Naturals)"),
        Symbol(glyph: "ℤ", name: "Double-struck Capital Z (Integers)"),
        Symbol(glyph: "ℚ", name: "Double-struck Capital Q (Rationals)"),
        Symbol(glyph: "ℝ", name: "Double-struck Capital R (Reals)"),
        Symbol(glyph: "ℂ", name: "Double-struck Capital C (Complex)"),
        Symbol(glyph: "ℍ", name: "Double-struck Capital H (Quaternions)"),
        Symbol(glyph: "𝔻", name: "Double-struck Capital D"),
        Symbol(glyph: "∞", name: "Infinity"),
        Symbol(glyph: "∈", name: "Element of"),
        Symbol(glyph: "≡", name: "Identical to"),
        Symbol(glyph: "=", name: "Equals Sign"),
        Symbol(glyph: "≠", name: "Not Equal To"),
        Symbol(glyph: "≈", name: "Almost Equal To"),
        Symbol(glyph: "∪", name: "Union"),
        Symbol(glyph: "∩", name: "Intersection"),
        Symbol(glyph: "∅", name: "Empty Set"),
        Symbol(glyph: "⊥", name: "Up Tack/Bottom Element/Nullity (Wheel Theory)"),
        Symbol(glyph: "Φ", name: "Capital Phi"),
        Symbol(glyph: "∴", name: "Therefore"),
        Symbol(glyph: "∵", name: "Because"),
        Symbol(glyph: "÷", name: "Division Sign"),
        Symbol(glyph: "π", name: "Pi"),
        Symbol(glyph: "∠", name: "Angle"),
        Symbol(glyph: "∇", name: "Nabla"),
        Symbol(glyph: "∂", name: "Partial Differential"),
        Symbol(glyph: "∀", name: "For All"),
        Symbol(glyph: "∃", name: "Exists"),
        Symbol(glyph: "⇒", name: "Implies"),
        Symbol(glyph: "⇔", name: "Equivalent"),
        Symbol(glyph: "⊆", name: "Subset or Equal To"),
        Symbol(glyph: "⊇", name: "Superset or Equal To"),
        Symbol(glyph: "⊈", name: "Not a subset"),
        Symbol(glyph: "⊂", name: "Proper Subset"),
        Symbol(glyph: "⊃", name: "Proper Superset"),
        Symbol(glyph: "∈", name: "Element of"),
        Symbol(glyph: "∉", name: "Not an Element of"),
        Symbol(glyph: "⊕", name: "Circle Plus"),
        Symbol(glyph: "¬", name: "Negation"),
        Symbol(glyph: "∝", name: "Proportional To"),
        Symbol(glyph: "≤", name: "Less Than or Equal To"),
        Symbol(glyph: "≥", name: "Greater Than or Equal To")
    ]
    
    static let numerals = [
        Symbol(glyph: "0", name: "Number 0"),
        Symbol(glyph: "1", name: "Number 1"),
        Symbol(glyph: "2", name: "Number 2"),
        Symbol(glyph: "3", name: "Number 3"),
        Symbol(glyph: "4", name: "Number 4"),
        Symbol(glyph: "5", name: "Number 5"),
        Symbol(glyph: "6", name: "Number 6"),
        Symbol(glyph: "7", name: "Number 7"),
        Symbol(glyph: "8", name: "Number 8"),
        Symbol(glyph: "9", name: "Number 9")
    ]
    
    static let uppercaseLetters = [
        Symbol(glyph: "A", name: "Uppercase A"),
        Symbol(glyph: "B", name: "Uppercase B"),
        Symbol(glyph: "C", name: "Uppercase C"),
        Symbol(glyph: "D", name: "Uppercase D"),
        Symbol(glyph: "E", name: "Uppercase E"),
        Symbol(glyph: "F", name: "Uppercase F"),
        Symbol(glyph: "G", name: "Uppercase G"),
        Symbol(glyph: "H", name: "Uppercase H"),
        Symbol(glyph: "I", name: "Uppercase I"),
        Symbol(glyph: "J", name: "Uppercase J"),
        Symbol(glyph: "K", name: "Uppercase K"),
        Symbol(glyph: "L", name: "Uppercase L"),
        Symbol(glyph: "M", name: "Uppercase M"),
        Symbol(glyph: "N", name: "Uppercase N"),
        Symbol(glyph: "O", name: "Uppercase O"),
        Symbol(glyph: "P", name: "Uppercase P"),
        Symbol(glyph: "Q", name: "Uppercase Q"),
        Symbol(glyph: "R", name: "Uppercase R"),
        Symbol(glyph: "S", name: "Uppercase S"),
        Symbol(glyph: "T", name: "Uppercase T"),
        Symbol(glyph: "U", name: "Uppercase U"),
        Symbol(glyph: "V", name: "Uppercase V"),
        Symbol(glyph: "W", name: "Uppercase W"),
        Symbol(glyph: "X", name: "Uppercase X"),
        Symbol(glyph: "Y", name: "Uppercase Y"),
        Symbol(glyph: "Z", name: "Uppercase Z")
    ]
    
    static let lowercaseLetters = [
        Symbol(glyph: "a", name: "Lowercase a"),
        Symbol(glyph: "b", name: "Lowercase b"),
        Symbol(glyph: "c", name: "Lowercase c"),
        Symbol(glyph: "d", name: "Lowercase d"),
        Symbol(glyph: "e", name: "Lowercase e"),
        Symbol(glyph: "f", name: "Lowercase f"),
        Symbol(glyph: "g", name: "Lowercase g"),
        Symbol(glyph: "h", name: "Lowercase h"),
        Symbol(glyph: "i", name: "Lowercase i"),
        Symbol(glyph: "j", name: "Lowercase j"),
        Symbol(glyph: "k", name: "Lowercase k"),
        Symbol(glyph: "l", name: "Lowercase l"),
        Symbol(glyph: "m", name: "Lowercase m"),
        Symbol(glyph: "n", name: "Lowercase n"),
        Symbol(glyph: "o", name: "Lowercase o"),
        Symbol(glyph: "p", name: "Lowercase p"),
        Symbol(glyph: "q", name: "Lowercase q"),
        Symbol(glyph: "r", name: "Lowercase r"),
        Symbol(glyph: "s", name: "Lowercase s"),
        Symbol(glyph: "t", name: "Lowercase t"),
        Symbol(glyph: "u", name: "Lowercase u"),
        Symbol(glyph: "v", name: "Lowercase v"),
        Symbol(glyph: "w", name: "Lowercase w"),
        Symbol(glyph: "x", name: "Lowercase x"),
        Symbol(glyph: "y", name: "Lowercase y"),
        Symbol(glyph: "z", name: "Lowercase z")
    ]
    
    static let lowercaseGreek = [
        Symbol(glyph: "α", name: "Lowercase alpha"),
        Symbol(glyph: "β", name: "Lowercase beta"),
        Symbol(glyph: "γ", name: "Lowercase gamma"),
        Symbol(glyph: "δ", name: "Lowercase delta"),
        Symbol(glyph: "ε", name: "Lowercase epsilon"),
        Symbol(glyph: "ζ", name: "Lowercase zeta"),
        Symbol(glyph: "η", name: "Lowercase eta"),
        Symbol(glyph: "θ", name: "Lowercase theta"),
        Symbol(glyph: "ι", name: "Lowercase iota"),
        Symbol(glyph: "κ", name: "Lowercase kappa"),
        Symbol(glyph: "λ", name: "Lowercase lambda"),
        Symbol(glyph: "μ", name: "Lowercase mu"),
        Symbol(glyph: "ν", name: "Lowercase nu"),
        Symbol(glyph: "ξ", name: "Lowercase xi"),
        Symbol(glyph: "ο", name: "Lowercase omicron"),
        Symbol(glyph: "π", name: "Lowercase pi"),
        Symbol(glyph: "ρ", name: "Lowercase rho"),
        Symbol(glyph: "σ", name: "Lowercase sigma"),
        Symbol(glyph: "τ", name: "Lowercase tau"),
        Symbol(glyph: "υ", name: "Lowercase upsilon"),
        Symbol(glyph: "φ", name: "Lowercase phi"),
        Symbol(glyph: "χ", name: "Lowercase chi"),
        Symbol(glyph: "ψ", name: "Lowercase psi"),
        Symbol(glyph: "ω", name: "Lowercase omega")
    ]
    
    static let uppercaseGreek = [
        Symbol(glyph: "Α", name: "Uppercase alpha"),
        Symbol(glyph: "Β", name: "Uppercase beta"),
        Symbol(glyph: "Γ", name: "Uppercase gamma"),
        Symbol(glyph: "Δ", name: "Uppercase delta"),
        Symbol(glyph: "Ε", name: "Uppercase epsilon"),
        Symbol(glyph: "Ζ", name: "Uppercase zeta"),
        Symbol(glyph: "Η", name: "Uppercase eta"),
        Symbol(glyph: "Θ", name: "Uppercase theta"),
        Symbol(glyph: "Ι", name: "Uppercase iota"),
        Symbol(glyph: "Κ", name: "Uppercase kappa"),
        Symbol(glyph: "Λ", name: "Uppercase lambda"),
        Symbol(glyph: "Μ", name: "Uppercase mu"),
        Symbol(glyph: "Ν", name: "Uppercase nu"),
        Symbol(glyph: "Ξ", name: "Uppercase xi"),
        Symbol(glyph: "Ο", name: "Uppercase omicron"),
        Symbol(glyph: "Π", name: "Uppercase pi"),
        Symbol(glyph: "Ρ", name: "Uppercase rho"),
        Symbol(glyph: "Σ", name: "Uppercase sigma"),
        Symbol(glyph: "Τ", name: "Uppercase tau"),
        Symbol(glyph: "Υ", name: "Uppercase upsilon"),
        Symbol(glyph: "Φ", name: "Uppercase phi"),
        Symbol(glyph: "Χ", name: "Uppercase chi"),
        Symbol(glyph: "Ψ", name: "Uppercase psi"),
        Symbol(glyph: "Ω", name: "Uppercase omega")
    ]
}
