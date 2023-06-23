//
//  BasketCoordinator.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit

class BasketCoordinator: Coordinator {
    var finishDelegate: CoordinatorFinishDelegate?

    var childCoordinators = [Coordinator]()

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let vc = BasketViewController()
        vc.coordinator = self
        vc.tabBarItem = TabBarItems.fourth.tabbarItem
        navigationController.pushViewController(vc, animated: true)
    }

}
