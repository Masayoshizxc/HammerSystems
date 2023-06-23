//
//  TableViewHeader.swift
//  HammerSystems
//
//  Created by Adilet on 23/6/23.
//

import UIKit
import SnapKit

class BannerViewHeader: UIView {
    
    var items = [Banner]()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self
        cv.register(BannerCollectionViewCell.self)
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = R.color.viewBackground()
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setItems(cell: Banner.fetch())
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setItems(cell: [Banner]){
        self.items = cell
    }
    
}

extension BannerViewHeader {
    func setupSubviews(){
        self.addSubview(collectionView)
    }
    
    func setupConstraints(){
        collectionView.snp.makeConstraints{make in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().inset(10)
            make.height.equalTo(130)
        }
    }
}

extension BannerViewHeader: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.getReuseCell(BannerCollectionViewCell.self, indexPath: indexPath)
        cell.image.image = items[indexPath.row].img
        cell.layer.cornerRadius = 10
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 112)
    }
    
    
    
    
}
