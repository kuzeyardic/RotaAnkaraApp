//
//  FavoritesPageViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 19.07.2023.
//

import UIKit

struct EventCategory {
    let name: String
    let imageName: String
}

class EventCell: UICollectionViewCell {
    var imageView: UIImageView!
    var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50
        contentView.addSubview(imageView)
        
        
        label = UILabel(frame: CGRect(x: 0, y: 100, width: contentView.bounds.width, height: 20))
        label.textAlignment = .center
        label.textColor = .white
        contentView.addSubview(label)
        
        imageView.isUserInteractionEnabled = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        imageView.addGestureRecognizer(tapGesture)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with category: EventCategory) {
        label.text = category.name
        imageView.image = UIImage(named: category.imageName)
    }
    
    @objc private func imageTapped() {
        
        guard let selectedImage = imageView.image else { return }
        
        print("Selected image name: \(selectedImage)")
    }
}



class EventDetailViewController: UIViewController {
    // Burada resmin detayları için gerekli UI elementlerini ve modeli tanımlayabilirsiniz.
    // Örneğin, bir `UIImageView` ve bir `UILabel` kullanarak resim ve adını gösterebilirsiniz.
    
    var selectedCategory: EventCategory?

    override func viewDidLoad() {
        super.viewDidLoad()

        // View Controller'ı doldurmak için gerekli işlemleri burada gerçekleştirin.
        // Örneğin, resmi ve adını gösterin.
        setupUI()
    }

    private func setupUI() {
        

        let eventLabel = UILabel()
        eventLabel.font = UIFont.systemFont(ofSize: 28.0)
        eventLabel.textAlignment = .left
        eventLabel.textColor = .white
        eventLabel.text = selectedCategory?.name
        eventLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eventLabel)
        
        NSLayoutConstraint.activate([
                eventLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
                eventLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
                // Burada gerekirse başka kısıtlamalar da ekleyebilirsiniz (sağ, alt, vb. kısıtlamalar)
            ])
        
    }
}



class FavoritesPageViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 140) // You can adjust the cell size as needed
        layout.scrollDirection = .horizontal // Enable horizontal scrolling
        layout.minimumLineSpacing = 2 // Reduce the vertical spacing between cells
        layout.minimumInteritemSpacing = 2
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()

    private var kategorilerLabel: UILabel!

    private let cellData: [EventCategory] = [
        EventCategory(name: "Fuar", imageName: "fuar.jpg"),
        EventCategory(name: "Tiyatro", imageName: "tiyatro.jpg"),
        EventCategory(name: "Konser", imageName: "konser.jpg"),
        EventCategory(name: "Workshop", imageName: "workshop.jpg"),
        EventCategory(name: "Restoran", imageName: "restoran.jpg"),
        EventCategory(name: "Açık Hava Sineması", imageName: "acikhavasinemasi.jpg"),
        EventCategory(name: "Spor", imageName: "spor.jpg"),
        EventCategory(name: "Galeri", imageName: "galeri.jpg"),
        EventCategory(name: "Stand Up", imageName: "standup.jpg")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupWelcomeLabel()
        setupCollectionView()

        // Step 4: Register collection view cells
        collectionView.register(EventCell.self, forCellWithReuseIdentifier: "EventCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.isUserInteractionEnabled = true
    }

    private func setupWelcomeLabel() {
        let welcomeLabel = UILabel()
        welcomeLabel.text = "Hoş Geldin"
        welcomeLabel.textColor = .white
        welcomeLabel.font = UIFont.systemFont(ofSize: 28.0)
        welcomeLabel.textAlignment = .left
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false

        let nameLabel = UILabel()
        nameLabel.text = "Büşra"
        nameLabel.textColor = .white
        nameLabel.font = UIFont.boldSystemFont(ofSize: 26.0)
        nameLabel.textAlignment = .left
        nameLabel.translatesAutoresizingMaskIntoConstraints = false

        let searchBar = UISearchBar()
        searchBar.placeholder = "Etkinlik Ara"
        searchBar.searchBarStyle = .minimal
        searchBar.translatesAutoresizingMaskIntoConstraints = false

        kategorilerLabel = UILabel()
        kategorilerLabel.text = "Kategoriler"
        kategorilerLabel.textColor = .white
        kategorilerLabel.font = UIFont.boldSystemFont(ofSize: 26.0)
        kategorilerLabel.textAlignment = .left
        kategorilerLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(welcomeLabel)
        view.addSubview(nameLabel)
        view.addSubview(searchBar)
        view.addSubview(kategorilerLabel)

        NSLayoutConstraint.activate([
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            
            nameLabel.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            nameLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 8),
            
            searchBar.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            searchBar.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            kategorilerLabel.leadingAnchor.constraint(equalTo: searchBar.leadingAnchor),
            kategorilerLabel.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 12)
        ])
    }
    
    private func setupCollectionView() {
        view.addSubview(collectionView)
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        collectionView.topAnchor.constraint(equalTo: kategorilerLabel.bottomAnchor, constant: 8).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: 140).isActive = true
    }

    // MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellData.count // Number of cells you want to display
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventCell", for: indexPath) as! EventCell
            let category = cellData[indexPath.item]
            cell.configure(with: category)
            return cell
        }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let selectedCategory = cellData[indexPath.item]
            
        let eventDetailVC = EventDetailViewController()
            eventDetailVC.selectedCategory = selectedCategory

            // Yeni view controller'ı açın (navigation controller ile örneğin)
            navigationController?.pushViewController(eventDetailVC, animated: true)
        }
}
