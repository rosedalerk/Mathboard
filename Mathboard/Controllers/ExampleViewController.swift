import Cocoa

class ExampleViewController: NSViewController {

    private var collectionView: NSCollectionView!
    
    let symbols: [String] = [
        "ℝ",
        "ℂ",
        "∎",
        "ℚ",
        "∞",
        "∈",
        "≡",
        "=",
        "≠",
        "≈",
        "∪",
        "∩",
        "∅",
        "⊥",
        "Φ",
        "∴",
        "∵",
        "÷",
        "π",
        "∠"
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        let flowLayout = NSCollectionViewFlowLayout()
        flowLayout.itemSize = NSSize(width: 100, height: 100)
        flowLayout.sectionInset = NSEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.minimumLineSpacing = 10

        collectionView = NSCollectionView()
        collectionView.collectionViewLayout = flowLayout
        collectionView.register(ExampleCollectionViewItem.self, forItemWithIdentifier: NSUserInterfaceItemIdentifier("ExampleCollectionViewItem"))
        collectionView.dataSource = self
//        collectionView.delegate = self
        collectionView.backgroundColors = [NSColor.windowBackgroundColor]

        self.view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ExampleViewController: NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return symbols.count // Set the number of items to display based on symbols
    }

    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = ExampleCollectionViewItem(text: symbols[indexPath.item])
        collectionView.register(ExampleCollectionViewItem.self, forItemWithIdentifier: NSUserInterfaceItemIdentifier("ExampleCollectionViewItem"))
        
//        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier("ExampleCollectionViewItem"), for: indexPath) as! ExampleCollectionViewItem
//        item.label.stringValue = symbols[indexPath.item]
        
        return item
    }

}

//extension ExampleViewController: NSCollectionViewDelegate {
//    func collectionView(_ collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<IndexPath>) {
//        guard let indexPath = indexPaths.first else { return }
//        let symbol = symbols[indexPath.item]
//        NSPasteboard.general.clearContents()
//        NSPasteboard.general.setString(symbol, forType: .string)
//    }
//}
