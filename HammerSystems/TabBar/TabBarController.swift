//
//  TabBarController.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit
import SnapKit

enum TabBarItems: CaseIterable {
    case first
    case second
    case third
    case fourth

    var tabbarItem: UITabBarItem {
        switch self {
        case .first:
            return .init(
                title: "Меню",
                image: R.image.firstPage(),
                tag: 1
            )

        case .second:
            return .init(
                title: "Контакты",
                image: R.image.secondPage(),
                tag: 1
            )
        case .third:
            return .init(
                title: "Профиль",
                image: R.image.thirdPage(),
                tag: 1
            )
        case .fourth:
            return .init(
                title: "Корзина",
                image: R.image.fourthPage(),
                tag: 1
            )
        }
    }
}

class TabBarController: UITabBarController {
    weak var coordinator: TabBarCoordinator?

    let homeCoordinator = HomeCoordinator(navigationController: UINavigationController())
    let contactsCoordinator = ContactsCoordinator(navigationController: UINavigationController())
    let profileCoordinator = ProfileCoordinator(navigationController: UINavigationController())
    let basketCoordinator = BasketCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
        UITabBar.appearance().tintColor = R.color.red()
        UITabBar.appearance().unselectedItemTintColor = R.color.gray()

        navigationItem.hidesBackButton = true
        navigationController?.navigationBar.backgroundColor = R.color.white()
        tabBarController?.tabBar.backgroundColor = R.color.white()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    private func configureTabs() {
        homeCoordinator.start()
        contactsCoordinator.start()
        profileCoordinator.start()
        basketCoordinator.start()

        viewControllers = [
            homeCoordinator.navigationController,
            contactsCoordinator.navigationController,
            profileCoordinator.navigationController,
            basketCoordinator.navigationController
        ]

    }

    private func setupConstraints() {
        let positionOnX: CGFloat = 59
        let positionOnY: CGFloat = 22
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2

        let bg = UIView()
        bg.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1)
        bg.layer.cornerRadius = 16
        bg.layer.opacity = 40
        tabBar.addSubview(bg)
        let clicked = UIView()

        clicked.layer.cornerRadius = 15
        bg.snp.makeConstraints {make in
            make.width.equalTo(296)
            make.height.equalTo(70)
            make.left.right.equalToSuperview().inset(59)
            make.bottom.equalToSuperview().inset(30)
        }


    }

}
