//
//  UserPageViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 19.07.2023.
//

import UIKit

class UserPageViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    // Örnek veri öğeleri, 9 hücre için kullanılacak
    let data = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // UICollectionViewFlowLayout oluştur
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

        // CollectionView'nin boyutunu belirle
        let collectionViewFrame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height / 2)

        // UICollectionView oluştur
        collectionView = UICollectionView(frame: collectionViewFrame, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = UIColor.clear

        // CollectionView'i sayfaya ekle
        view.addSubview(collectionView)

        // CollectionView'nin boyutunu ayarla
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: view.bounds.height / 2) // CollectionView yüksekliğini belirt
        ])
    }

    // MARK: UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = UIColor.blue // Hücre arka plan rengini belirle
        return cell
    }

    // MARK: UICollectionViewDelegateFlowLayout

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Hücre boyutunu ayarlayın (örn. 9 hücrenin tam ekran olması için)
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
}
