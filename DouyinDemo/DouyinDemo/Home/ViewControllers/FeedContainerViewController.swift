//
//  FeedContainerViewController.swift
//  DouyinDemo
//
//  Created by 陳峻琦 on 22/5/2022.
//

import UIKit
import SnapKit

protocol FeedContainerViewControllerDelegate: NSObjectProtocol {
    func feedContainerViewController(controller: FeedContainerViewController, viewControllerAt indexPath: IndexPath) -> UIViewController
    
    func numberOfViewControllers(in containerViewController: FeedContainerViewController) -> Int
}

class FeedContainerViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    public weak var delegate: FeedContainerViewControllerDelegate?
    
    private var collectionView: UICollectionView!
    private var collectionLayout: UICollectionViewFlowLayout!

    override func viewDidLoad() {
        super.viewDidLoad()

        //Collection View Layout
        collectionLayout = UICollectionViewFlowLayout()
        collectionLayout.scrollDirection = .horizontal
        collectionLayout.minimumLineSpacing = 0
    
        //Collection View
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionLayout)
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(FeedContainerCollectionViewCell.self, forCellWithReuseIdentifier: FeedContainerCollectionViewCell.reuseIdentifierString)
        collectionView.isPagingEnabled = true //可以进行分页
        collectionView.showsHorizontalScrollIndicator = false
        
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.edges.equalTo(0)
        }
    }
    
    //MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
    //MARK: UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return delegate?.numberOfViewControllers(in: self) ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeedContainerCollectionViewCell.reuseIdentifierString, for: indexPath) as! FeedContainerCollectionViewCell
        if let viewController = delegate?.feedContainerViewController(controller: self, viewControllerAt: indexPath) {
            cell.config(with: viewController)
        }
        cell.backgroundColor = UIColor.randomColor //随机背景颜色
        return cell
    }

}
