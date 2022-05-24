//
//  UIViewController+Douyin.swift
//  DouyinDemo
//
//  Created by 陳峻琦 on 22/5/2022.
//

import Foundation
import UIKit

extension UIViewController {
    func addChild(childViewController: UIViewController?, layout: (_ view: UIView) -> Void) {
        guard let childViewController = childViewController else {
            return
        }
        
        view.addSubview(childViewController.view)
        addChild(childViewController)
        childViewController.didMove(toParent: self)
        
        layout(childViewController.view)
    }
}
