//
//  HomeCoordinator.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit

class HomeCoordinator: Coordinator {
    var finishDelegate: CoordinatorFinishDelegate?

    var childCoordinators = [Coordinator]()

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = HomeViewController()
        vc.coordinator = self
        vc.tabBarItem = TabBarItems.first.tabbarItem
        navigationController.navigationBar.backgroundColor = R.color.viewBackground()
        navigationController.navigationBar.barTintColor = R.color.viewBackground()
        navigationController.pushViewController(vc, animated: true)
    }

}
