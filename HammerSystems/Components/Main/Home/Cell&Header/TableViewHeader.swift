//
//  TableViewHeader.swift
//  HammerSystems
//
//  Created by Adilet on 23/6/23.
//

import UIKit

class TableViewHeader: UIView {
    
    var items = [Banner]()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self
        cv.register(BannerCollectionViewCell.self)
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        setItems(cell: Banner.fetch())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setItems(cell: [Banner]){
        self.items = cell
    }
    
}

extension TableViewHeader: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.getReuseCell(BannerCollectionViewCell.self, indexPath: indexPath)
        cell.image.image = items[indexPath.row].img
        return cell
    }
    
    
    
    
}
