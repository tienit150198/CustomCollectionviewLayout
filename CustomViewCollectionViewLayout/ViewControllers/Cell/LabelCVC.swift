//
//  LabelCVC.swift
//  CustomViewCollectionViewLayout
//
//  Created by TranTien on 1/25/21.
//

import UIKit

class LabelCVC: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        title.sizeToFit()
    }
    
    func configCell(_ title: String) {
        self.title.text = title
    }

}
