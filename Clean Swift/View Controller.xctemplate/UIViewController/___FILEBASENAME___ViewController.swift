//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: class {
}

class ___VARIABLE_sceneName___ViewController: TrackingViewController, ___VARIABLE_sceneName___DisplayLogic {
    let interactor: ___VARIABLE_sceneName___BusinessLogic
    let router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic)

    // MARK: Object lifecycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        interactor = ___VARIABLE_sceneName___Interactor()
        router = ___VARIABLE_sceneName___Router()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        ((interactor as? ___VARIABLE_sceneName___Interactor)?.presenter as? ___VARIABLE_sceneName___Presenter)?.viewController = self
        (router as? ___VARIABLE_sceneName___Router)?.viewController = self
    }

    required init?(coder aDecoder: NSCoder) {
        interactor = ___VARIABLE_sceneName___Interactor()
        router = ___VARIABLE_sceneName___Router()
        super.init(coder: aDecoder)
        ((interactor as? ___VARIABLE_sceneName___Interactor)?.presenter as? ___VARIABLE_sceneName___Presenter)?.viewController = self
        (router as? ___VARIABLE_sceneName___Router)?.viewController = self
    }

    // MARK: Routing

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
}
