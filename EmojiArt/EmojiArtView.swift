//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Zhussupali Salamat on 10/25/20.
//

import UIKit

class EmojiArtView: UIView {

    var backgroundImage : UIImage? {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        backgroundImage?.draw(in: bounds)
    }
    

}
