//
//  CategoriesViewHeader.swift
//  HammerSystems
//
//  Created by Adilet on 23/6/23.
//

import UIKit
import SnapKit

class CategoriesViewHeader: UIView {
    
    var items = [Categories]()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.delegate = self
        cv.dataSource = self
        cv.register(CategoriesViewCell.self)
        cv.backgroundColor = R.color.viewBackground()
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = R.color.viewBackground()
        setItems(cell: Categories.fetch())
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setItems(cell: [Categories]){
        self.items = cell
    }
}

extension CategoriesViewHeader {
    func setupSubviews(){
        self.addSubview(collectionView)
    }
    func setupConstraints(){
        collectionView.snp.makeConstraints{make in
            make.centerY.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(36)
        }
    }
}

extension CategoriesViewHeader: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 88, height: 32)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.getReuseCell(CategoriesViewCell.self, indexPath: indexPath)
        cell.layer.borderWidth = 1
        cell.layer.borderColor = R.color.redUnselected()?.cgColor
        cell.layer.cornerRadius = cell.frame.size.height/2
        cell.title.text = items[indexPath.row].title
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    
    
    
    
}
