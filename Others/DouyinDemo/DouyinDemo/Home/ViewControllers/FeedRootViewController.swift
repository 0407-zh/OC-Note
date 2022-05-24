//
//  FeedRootViewController.swift
//  DouyinDemo
//
//  Created by 陳峻琦 on 22/5/2022.
//

import UIKit

class FeedRootViewController: UIViewController, FeedContainerViewControllerDelegate{
    private var containerVC: FeedContainerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        //CollectionVC
        containerVC = FeedContainerViewController()
        containerVC.delegate = self
        
        addChild(childViewController: containerVC) { subview in
            subview.snp.makeConstraints { make in
                make.leading.trailing.top.equalTo(self.view)
                make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottomMargin)
            }
        }
    }
    
    func feedContainerViewController(controller: FeedContainerViewController, viewControllerAt indexPath: IndexPath) -> UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = UIColor.randomColor
        return vc
    }
    
    func numberOfViewControllers(in containerViewController: FeedContainerViewController) -> Int {
        return 2
    }
}
