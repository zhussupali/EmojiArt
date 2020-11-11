//
//  TextFieldCollectionViewCell.swift
//  EmojiArt
//
//  Created by Zhussupali Salamat on 11/11/20.
//

import UIKit

class TextFieldCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField! {
        didSet {
            textField.delegate = self
        }
    }
    
    // clicking return closes keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    var resignationHandler: (() -> Void)?
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        resignationHandler?()
    }
    
    var width: CGFloat?
    
    
    override func updateConstraints() {
        super.updateConstraints()
        if width == nil {
        
            let widthConstraint = NSLayoutConstraint(item: textField!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: self.frame.width)
            textField.addConstraint(widthConstraint)
            width = textField.frame.width
        }
        
    }
}
