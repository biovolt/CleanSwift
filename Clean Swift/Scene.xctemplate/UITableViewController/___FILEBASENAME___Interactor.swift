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

protocol ___VARIABLE_sceneName___BusinessLogic {
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic {
    let presenter: ___VARIABLE_sceneName___PresentationLogic

    init(presenter: ___VARIABLE_sceneName___PresentationLogic) {
        self.presenter = presenter
        self.worker = worker
    }

    convenience init() {
        self.init(presenter: ___VARIABLE_sceneName___Presenter())
    }
}
