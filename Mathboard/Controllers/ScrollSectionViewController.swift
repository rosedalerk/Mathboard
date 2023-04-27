import Cocoa

class ScrollSectionViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
    }
    
    private func setupScrollView() {
        let scrollView = NSScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.hasVerticalScroller = true
//        scrollView.borderType = .noBorder
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        let stackView = NSStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.orientation = .vertical
        stackView.spacing = 20
        
        scrollView.documentView = stackView
        
        let sectionsData: [SymbolCollection] = SymbolsData.allCollections
        
        for sectionData in sectionsData {
            let sectionView = SectionView(title: sectionData.title, color: .red)
            stackView.addArrangedSubview(sectionView)
        }
    }
}
