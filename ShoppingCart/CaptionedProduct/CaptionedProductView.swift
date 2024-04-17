import UIKit

class CaptionedProductView: UIView {

    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var viewProduct: UIView!
    
    var captionedProduct: CaptionedProduct! {
        didSet {
            caption.text = captionedProduct.caption
            btn.setTitle(captionedProduct.btnTitle, for: .normal)
        }
    }
    
    var showCaption: Bool = true {
        didSet {
            caption.isHidden = !showCaption
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupWithBundle()
    }
    
    // para IB
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupWithBundle()
    }
    private func setupWithBundle() {
        guard let view = Bundle.main.loadNibNamed("CaptionedProductView", owner: self)?.first as? UIView else { return }
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    @IBAction func isPress(_ sender: UIButton){
        if btn.isSelected {
                btn.setTitle("✅", for: .normal)
            viewProduct.backgroundColor = UIColor.green
            caption.textColor = UIColor.black
        } else {
            btn.setTitle(captionedProduct.btnTitle, for: .normal)
            viewProduct.backgroundColor = UIColor.clear
            caption.textColor = UIColor.label
        }
            btn.isSelected.toggle()
    }
}
