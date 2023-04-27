import Cocoa

class SectionView: NSView {
    
    init(title: String, color: NSColor) {
        super.init(frame: .zero)
        configure(title: title, color: color)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(title: String, color: NSColor) {
        let titleLabel = NSTextField(labelWithString: title)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        
        let contentsView = NSView()
        contentsView.translatesAutoresizingMaskIntoConstraints = false
        contentsView.wantsLayer = true
        contentsView.layer?.backgroundColor = color.cgColor
        addSubview(contentsView)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            
            contentsView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentsView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentsView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            contentsView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentsView.heightAnchor.constraint(equalToConstant: 100) // Set a fixed height for the contents view
        ])
    }
}