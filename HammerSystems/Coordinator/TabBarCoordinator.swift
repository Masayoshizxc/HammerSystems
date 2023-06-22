//
//  TabBarCoordinator.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit

class TabBarCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {

    var finishDelegate: CoordinatorFinishDelegate?

    var childCoordinators = [Coordinator]()

    var navigationController: UINavigationController

    var parentCoordinator: Coordinator?

    var tabbarController: UITabBarController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.tabbarController = .init()
    }

    func start() {
        let vc = TabBarController()
        navigationController.pushViewController(vc, animated: false)
    }

    func login() {
//        let vc = AuthViewController()

    }

}

