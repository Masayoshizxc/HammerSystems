//
//  ProfileCoordinator.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit

class ProfileCoordinator: Coordinator {
    var finishDelegate: CoordinatorFinishDelegate?

    var childCoordinators = [Coordinator]()

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ProfileViewController()
        vc.coordinator = self
        vc.tabBarItem = TabBarItems.third.tabbarItem
        navigationController.pushViewController(vc, animated: true)
    }

}
