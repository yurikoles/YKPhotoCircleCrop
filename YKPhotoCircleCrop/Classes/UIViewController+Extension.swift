//
//  UIViewController+Extension.swift
//
//  Created by Andrea Antonioni on 17.01.2017.
//  Modified by Yurii Kolesnykov on on 02.06.2018.
//  Copyright © 2018 Yurii Kolesnykov. All rights reserved.
//

import Foundation

extension UIViewController {

    var isModal: Bool {
        if self.presentingViewController != nil {
            return true
        } else if self.navigationController?.presentingViewController?.presentedViewController == self.navigationController {
            return true
        } else if self.tabBarController?.presentingViewController is UITabBarController {
            return true
        }
        return false
    }
}
