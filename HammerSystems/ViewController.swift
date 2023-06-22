//
//  ViewController.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit

class ViewController: UIViewController {

    var coordinator: MainCoordinator?

    private lazy var btn: UIButton={
        let b = UIButton()
        return b
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        view.addSubview(btn)
    }

}
