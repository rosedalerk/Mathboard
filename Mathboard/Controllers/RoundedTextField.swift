import Cocoa

class RoundedTextField: NSTextField {
    override func draw(_ dirtyRect: NSRect) {
        let cornerRadius: CGFloat = 30
        let path = NSBezierPath(roundedRect: bounds, xRadius: cornerRadius, yRadius: cornerRadius)
        NSColor.white.setFill()
        path.fill()

        super.draw(dirtyRect)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.isBordered = false
        self.drawsBackground = true
        self.backgroundColor = .white
    }
}
