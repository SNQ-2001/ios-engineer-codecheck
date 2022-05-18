//
//  UIView+.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/18.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import UIKit

extension UIView {
    func fadeTransition(_ duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.fade
        animation.duration = duration
        layer.add(animation, forKey: CATransitionType.fade.rawValue)
    }
}
