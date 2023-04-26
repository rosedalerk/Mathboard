import Cocoa

class ExampleCollectionViewItem: NSCollectionViewItem {
    
    let text: String
    var label: NSTextField!
    
    init(text: String) {
        self.text = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = NSView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        label = RoundedTextField()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.stringValue = text
        label.isEditable = false
        label.isBordered = false
        label.drawsBackground = false
        label.alignment = .center
        label.font = NSFont.systemFont(ofSize: 30) // Adjust font size
        self.view.addSubview(label)

        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        // Add click handler
        let recognizer = NSClickGestureRecognizer(target: self, action: #selector(handleClick))
        self.view.addGestureRecognizer(recognizer)
    }

    @objc func handleClick() {
        print("CollectionView item clicked: \(text)")

        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(text, forType: .string)

        // Flash the background
        label.backgroundColor = NSColor.darkGray
        NSAnimationContext.runAnimationGroup({ context in
            context.duration = 0.2
            label.animator().backgroundColor = NSColor.white
        })
    }




}
