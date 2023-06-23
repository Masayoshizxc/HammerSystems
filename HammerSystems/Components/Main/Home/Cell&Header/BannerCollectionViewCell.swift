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
        clipsToBounds = true
//        i.layer.cornerRadius = 20
        i.translatesAutoresizingMaskIntoConstraints = false
//        i.contentMode = .scaleAspectFill
        return i
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        setupConstraints()
//        self.image.layer.cornerRadius = 10
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
//            make.width.equalTo(300)
//            make.height.equalTo(112)
        }
    }
}
