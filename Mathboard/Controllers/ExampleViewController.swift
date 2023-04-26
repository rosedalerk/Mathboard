import Cocoa

class ExampleViewController: NSViewController {

    private var collectionView: NSCollectionView!
    private var scrollView: NSScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let flowLayout = NSCollectionViewFlowLayout()
        let cellSize = 50
        flowLayout.itemSize = NSSize(width: cellSize, height: cellSize)
        flowLayout.sectionInset = NSEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.minimumLineSpacing = 10

        collectionView = NSCollectionView()
        collectionView.collectionViewLayout = flowLayout
        collectionView.register(ExampleCollectionViewItem.self, forItemWithIdentifier: NSUserInterfaceItemIdentifier("ExampleCollectionViewItem"))
        collectionView.dataSource = self
//        collectionView.backgroundColors = [NSColor.windowBackgroundColor]

        scrollView = NSScrollView(frame: view.bounds)
        scrollView.documentView = collectionView
        scrollView.hasVerticalScroller = true
        scrollView.autohidesScrollers = true

        self.view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ExampleViewController: NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return SymbolsData.symbols.count // Set the number of items to display based on symbols
    }

    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = ExampleCollectionViewItem(text: SymbolsData.symbols[indexPath.item].glyph)
        collectionView.register(ExampleCollectionViewItem.self, forItemWithIdentifier: NSUserInterfaceItemIdentifier("ExampleCollectionViewItem"))
        
        return item
    }

}
