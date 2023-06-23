//
//  CategoriesViewCell.swift
//  HammerSystems
//
//  Created by Adilet on 23/6/23.
//

import UIKit
import SnapKit

class CategoriesViewCell: UICollectionViewCell {
    
    lazy var title: UILabel = {
        let l = UILabel()
        l.font = UIFont(name: "SFUIDisplay-Light", size: 13)
        l.textColor = R.color.redUnselected()
        
        return l
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

extension CategoriesViewCell {
    
    func setupSubviews(){
        self.contentView.addSubview(title)
    }
    func setupConstraints(){
        title.snp.makeConstraints{make in
            make.centerX.centerY.equalToSuperview()
        }
    }
}
