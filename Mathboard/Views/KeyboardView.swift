import Cocoa

class KeyboardView: NSView {

    let keys = [
        ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"],
        ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
        ["a", "s", "d", "f", "g", "h", "j", "k", "l", ";"],
        ["z", "x", "c", "v", "b", "n", "m", ",", ".", "/"]
    ]
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Draw the keys
        for (rowIndex, row) in keys.enumerated() {
            for (keyIndex, key) in row.enumerated() {
                let keyRect = NSMakeRect(CGFloat(keyIndex * 30), CGFloat(rowIndex * 30), 30, 30)
                NSColor.white.setFill()
                let path = NSBezierPath(rect: keyRect)
                path.fill()
                
                let keyLabel = NSTextField(frame: keyRect)
                keyLabel.stringValue = key
                keyLabel.isBezeled = false
                keyLabel.isEditable = false
                keyLabel.isSelectable = false
                keyLabel.drawsBackground = false
                keyLabel.alignment = .center
                self.addSubview(keyLabel)
            }
        }
    }
    
    @IBAction func keyDownAction(_ sender: NSButton) {
        let key = sender.title
        
        NSApplication.shared.sendEvent(NSEvent.keyEvent(with: .keyDown,
                                                        location: NSEvent.mouseLocation,
                                                        modifierFlags: [],
                                                        timestamp: 0,
                                                        windowNumber: 0,
                                                        context: nil,
                                                        characters: key,
                                                        charactersIgnoringModifiers: key,
                                                        isARepeat: false,
                                                        keyCode: 0)!)
    }
}
