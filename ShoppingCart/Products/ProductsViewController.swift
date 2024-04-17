//
//  ProductsViewController.swift
//  ShoppingCart
//
//  Created by Diplomado on 13/04/24.
//

import UIKit

class ProductsViewController: UIViewController {

    @IBOutlet weak var firstCaptionedProduct: CaptionedProductView!
    
    var productType: PictureType = .shopingCart
    var btnPress: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPictures()
    }
       
    private func setPictures() {
        let captionedProducts = productType.captionedPictures
        
        for captionedProduct in captionedProducts {
                    let captionedProductView = CaptionedProductView()
                    captionedProductView.captionedProduct = captionedProduct
                    captionedProductView.showCaption = true
                    (firstCaptionedProduct.superview as? UIStackView)?.addArrangedSubview(captionedProductView)
                }
        if let firstProductView = (firstCaptionedProduct.superview as? UIStackView)?.arrangedSubviews.first as? CaptionedProductView {
                    firstProductView.isHidden = true
                }
    }
}
