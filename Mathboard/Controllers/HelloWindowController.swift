import Cocoa

class HelloWindowController: NSWindowController {
    
    let minWindowWidth: CGFloat = 500
    let minWindowHeight: CGFloat = 350
    let maxWindowWidth: CGFloat = 1000
    let maxWindowHeight: CGFloat = 1200

    override func windowDidLoad() {
        super.windowDidLoad()
        
        window?.level = .floating
        window?.minSize = CGSize(width: minWindowWidth,
                                 height: minWindowHeight)
        window?.maxSize = CGSize(width: maxWindowWidth,
                                 height: maxWindowHeight)
    }

}
