//
//  MainCoordinator.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit

class MainCoordinator: Coordinator {

    var childCoordinators = [Coordinator]()
    var finishDelegate: CoordinatorFinishDelegate?
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

func start() {
    let vc = ViewController()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
    
    }
    
}
