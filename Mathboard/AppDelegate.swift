//
//  AppDelegate.swift
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        
//        
//        let window = NSWindow(contentRect: NSMakeRect(0, 0, 300, 200),
//                              styleMask: [.titled, .closable, .miniaturizable],
//                              backing: .buffered,
//                              defer: false)
//        window.title = "Virtual Keyboard"
//        window.center()
//        window.makeKeyAndOrderFront(nil)
        
//        let keyboardView = KeyboardView(frame: window.contentView!.bounds)
//        window.contentView!.addSubview(keyboardView)
//        window.level = .floating
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if !flag {
            for window: NSWindow in sender.windows {
                if let windowController = window.windowController {
                    // Check if the window is an instance of your main window controller
                    if windowController is HelloWindowController {
                        window.makeKeyAndOrderFront(self)
                        break
                    }
                }
            }
        }
        return true
    }

}

