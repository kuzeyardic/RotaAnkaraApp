//
//  EventDetailViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 3.08.2023.
//

import UIKit


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

