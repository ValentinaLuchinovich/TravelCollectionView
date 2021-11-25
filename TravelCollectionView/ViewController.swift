//
//  ViewController.swift
//  TravelCollectionView
//
//  Created by Валентина Лучинович on 24.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTravel: UILabel!
    
    // Создаём Collection View
    private var galleryCollectionView = GalleryCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Добавляем CollectionView на экран
        view.addSubview(galleryCollectionView)
        
        // Расставляем боковые констрейнты для CollectionView
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        // Располагаем верхнюю границу на 10 точек ниже нижжней границе заголовка
        galleryCollectionView.topAnchor.constraint(equalTo: myTravel.bottomAnchor, constant: 10).isActive = true
        // Располагаем нижнюю границу в 40 точках от края вью
        galleryCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        
//        // Устанавливам высоту CollectionView
//        galleryCollectionView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
        
        //Вызываем функцию наполняющую массив информацией о путешествиях
        galleryCollectionView.set(cells: TravelModel.fetchTravel())
    }


}

