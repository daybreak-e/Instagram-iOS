//
//  FeedController.swift
//  Instagram-iOS
//
//  Created by 이새벽 on 2021/09/03.
//

import UIKit

private let reuseIdentifier = "Cell"
class FeedController: UICollectionViewController {
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        configure()
    }
    
    //MARK: - Helpers
    func configure() {
        collectionView.backgroundColor = .white
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
}

//MARK: - UIControllerDataSource
extension FeedController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension FeedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
}
