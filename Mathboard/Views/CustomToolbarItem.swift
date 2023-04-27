//import Cocoa
//
//class CustomToolbarItem: NSToolbarItem {
//    var isPinned = false // default is unpinned
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        self.target = self
//        self.action = #selector(onClick)
//        
//        // Load pin symbol from SF Symbols
//        if let image = NSImage(systemSymbolName: "pin", accessibilityDescription: "Pin") {
//            self.image = image
//        }
//    }
//
//    @objc func onClick() {
//        self.isPinned.toggle()
//        if isPinned {
//            if let image = NSImage(systemSymbolName: "pin.slash", accessibilityDescription: "Unpin") {
//                self.image = image
//            }
//            // add code here for pinned state action
//        } else {
//            if let image = NSImage(systemSymbolName: "pin", accessibilityDescription: "Pin") {
//                self.image = image
//            }
//            // add code here for unpinned state action
//        }
//    }
//}
