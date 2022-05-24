//
//  FeedContainerCollectionViewCell.swift
//  DouyinDemo
//
//  Created by 陳峻琦 on 22/5/2022.
//

import Foundation
import UIKit
import SnapKit

class FeedContainerCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifierString = "FeedContainerCollectionViewCell"
    
    private var viewController: UIViewController?
    
    public func config(with viewController: UIViewController) {
        self.viewController?.view.removeFromSuperview()
        self.viewController = viewController
        
        if let view = self.viewController?.view {
            self.contentView.addSubview(view)
            view.snp.makeConstraints { make in
                make.edges.equalTo(0)
            }
        }
    }
}
