//
//  ViewController.swift
//  CustomViewCollectionViewLayout
//
//  Created by TranTien on 1/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    private let tags: [String] = Constants.allTags

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setViews()
    }
    
    private func setViews() {
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "LabelCVC", bundle: nil), forCellWithReuseIdentifier: "LabelCVC")
        
        let layout = UICollectionViewLayoutCustom()
        layout.estimatedItemSize = CGSize(width: 140, height: 30)
        layout.align = .center
        self.collectionView.collectionViewLayout = layout
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tags.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = tags[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LabelCVC", for: indexPath) as! LabelCVC
        
        cell.configCell(item)
        return cell
    }
    
    
}
