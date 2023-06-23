//
//  ContactsCoordinator.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit

class ContactsCoordinator: Coordinator {
    var finishDelegate: CoordinatorFinishDelegate?

    var childCoordinators = [Coordinator]()

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ContactsViewController()
        vc.coordinator = self
        vc.tabBarItem = TabBarItems.second.tabbarItem
        navigationController.pushViewController(vc, animated: true)
    }

}
