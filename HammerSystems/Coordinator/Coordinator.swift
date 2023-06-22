//
//  Coordinator.swift
//  HammerSystems
//
//  Created by Adilet on 22/6/23.
//

import UIKit

protocol Coordinator: AnyObject {

    var finishDelegate: CoordinatorFinishDelegate? { get set }

    var childCoordinators: [Coordinator] { get set }

    var navigationController: UINavigationController { get set }

    func start()
    func finish()

}

extension Coordinator {
    func finish() {
        childCoordinators.removeAll()
    }
}

protocol CoordinatorFinishDelegate: Coordinator {
    func coordinatorDidFinish(childCoordinator: Coordinator)
}
