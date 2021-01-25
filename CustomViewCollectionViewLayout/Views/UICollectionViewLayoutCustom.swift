//
//  CollectionViewLeftLayout.swift
//  FramworkFoxCode
//
//  Created by TranTien on 1/25/21.
//

import UIKit

class CollectionViewRow {
    var attributes: [UICollectionViewLayoutAttributes] = []
    var spacing: CGFloat = 0
    
    init(spacing: CGFloat) {
        self.spacing = spacing
    }
    
    func add(attr: UICollectionViewLayoutAttributes) {
        attributes.append(attr)
    }
    
    var rowWidth: CGFloat {
        return attributes.reduce(0, { res, attr -> CGFloat in
            return res + attr.frame.width
        }) + CGFloat((attributes.count - 1)) * self.spacing
    }
    
    func centerLayout(_ collectionViewWidth: CGFloat) {
        let padding = (collectionViewWidth - rowWidth) / 2
        var offset = padding
        
        for attr in attributes {
            attr.frame.origin.x = offset
            offset += attr.frame.width + spacing
        }
    }
    
    func leftLayout(_ collectionViewWidth: CGFloat) {
        var offset = CGFloat.zero
        
        for attr in attributes {
            attr.frame.origin.x = offset
            offset += attr.frame.width + spacing
        }
    }
    
    func rightLayout(_ collectionViewWidth: CGFloat) {
        var offset = collectionViewWidth - rowWidth
        
        for attr in attributes {
            attr.frame.origin.x = offset
            offset += attr.frame.width + spacing
        }
    }
}

enum AlignLayout {
    case left
    case right
    case center
}

class UICollectionViewLayoutCustom : UICollectionViewFlowLayout {
    var align = AlignLayout.center

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        guard let attributes = super.layoutAttributesForElements(in: rect) else {
            return nil
        }
        
        var rows: [CollectionViewRow] = []
        var currentRowY: CGFloat = -1
        
        for attr in attributes {
            if currentRowY != attr.frame.midY {
                currentRowY = attr.frame.midY
                rows.append(CollectionViewRow(spacing: 10))
            }
            
            rows.last?.add(attr: attr)
        }
        
        rows.forEach { item in
            switch self.align {
            case .center:
                item.centerLayout(collectionView?.frame.width ?? 0)
            case .left:
                item.leftLayout(collectionView?.frame.width ?? 0)
            default:
                item.rightLayout(collectionView?.frame.width ?? 0)
            }
        }
        
        return rows.flatMap { $0.attributes }
    }
}
