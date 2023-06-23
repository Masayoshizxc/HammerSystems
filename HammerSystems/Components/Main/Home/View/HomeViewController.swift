//
//  File.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewController {

    var coordinator: HomeCoordinator?

    private lazy var location: UIButton = {
        let b = UIButton()
        b.titleLabel?.font = UIFont(name: "sf-semibold", size: 17)
        b.setTitleColor(.black, for: .normal)
        b.setImage(R.image.navLoc(), for: .normal)
        b.setTitle("Москва", for: .normal)
        b.tintColor = .black
        b.semanticContentAttribute = .forceRightToLeft
        b.imageEdgeInsets = UIEdgeInsets(top: 3, left: 7, bottom: -3, right: -7)
        b.addTarget(self, action: #selector(setupMenuButton), for: .touchUpInside)
        return b
    }()
    
    private lazy var tableView: UITableView = {
        let t = UITableView()
        t.delegate = self
        t.dataSource = self
        t.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        t.tableHeaderView = TableViewHeader(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 200))
        return t
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        setupConstraints()
    }
    
    @objc func setupMenuButton(){
        let optionClosure = {(action : UIAction) in
            print(action.title)
        }
        
        location.menu = UIMenu(children : [
            UIAction(title: "Москва", state: .on, handler: optionClosure),
            UIAction(title: "Санкт-Петербург", handler: optionClosure),
            UIAction(title: "Кипр", handler: optionClosure)
        ])
        
        location.showsMenuAsPrimaryAction = true
        location.changesSelectionAsPrimaryAction = true
    }

}

extension HomeViewController {
    
    func setupSubviews(){
//        view.addSubview(location)
        self.navigationController?.navigationBar.addSubview(location)
        view.addSubview(tableView)
    }
    
    func setupConstraints(){
        location.snp.makeConstraints{make in
            make.top.equalToSuperview().inset(20)
            make.left.equalToSuperview().inset(16)
        }
        tableView.snp.makeConstraints{make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        cell.backgroundColor = .purple
        return cell
    }
    
    
        
    
}
