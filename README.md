# CustomCollectionviewLayout

Example custom CollectionView Layout with alignment left, center, right
> result of code like here:
* center
![alt](https://github.com/tienit150198/CustomCollectionviewLayout/blob/main/image/center.png)
* left
![alt](https://github.com/tienit150198/CustomCollectionviewLayout/blob/main/image/left.png)
* right
![alt](https://github.com/tienit150198/CustomCollectionviewLayout/blob/main/image/right.png)

### Usage
```switf
let layout = UICollectionViewLayoutCustom()
layout.estimatedItemSize = CGSize(width: 140, height: 30)
layout.align = .center
self.collectionView.collectionViewLayout = layout
```
