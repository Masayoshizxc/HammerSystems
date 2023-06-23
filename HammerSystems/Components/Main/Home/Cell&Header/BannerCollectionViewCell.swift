//
//  BannerCollectionViewCell.swift
//  HammerSystems
//
//  Created by Adilet on 23/6/23.
//

import UIKit
import SnapKit

class BannerCollectionViewCell: UICollectionViewCell{
    
    lazy var image: UIImageView = {
        let i = UIImageView()
        i.frame = CGRect(x: 0, y: 0, width: 300, height: 112)
        i.layer.cornerRadius = 10
        return i
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension BannerCollectionViewCell {
    
    func setupSubviews(){
        contentView.addSubview(image)
    }
    
    func setupConstraints(){
        image.snp.makeConstraints{make in
            make.centerY.equalToSuperview()
        }
    }
}
