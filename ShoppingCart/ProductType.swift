import UIKit

enum PictureType  {
    case shopingCart
    
    var captionedPictures: [CaptionedProduct] {
        switch self {
        case .shopingCart:
            [
                CaptionedProduct(caption: "Manzas", btnTitle: "🍏"),
                CaptionedProduct(caption: "Peras", btnTitle: "🍐"),
                CaptionedProduct(caption: "Platano", btnTitle: "🍌"),
                CaptionedProduct(caption: "Sandia", btnTitle: "🍉"),
                CaptionedProduct(caption: "Mango", btnTitle: "🥭"),
                CaptionedProduct(caption: "Pan", btnTitle: "🥐")
            ]
        }
    }
}

