//
//  GallaryCollectionViewCell.swift
//  TravelCollectionView
//
//  Created by Валентина Лучинович on 24.11.2021.
//

import UIKit

class GallaryCollectionViewCell: UICollectionViewCell {
    
    // Создаём идентификатор
    static let reuseID = "GallaryCollectionViewCell"
    
    // Создаем картинку внутри ячейки и делаем во весь размер ячейки
    let mainimageView: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = UIColor.green
        // Добавляем свойство с информацией о констрейтах
        imageView.translatesAutoresizingMaskIntoConstraints = false
        // Делаем размер изображения равным исходному, т.е. сохраняем все пропорции
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // Создаём заголовок внутри ячейки
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    // Создаем текстовый фрейм с информацией о путешествии
    let descriptionOfTravel: UITextView = {
        let description = UITextView()
        description.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        description.textColor = .lightGray
        description.translatesAutoresizingMaskIntoConstraints = false
        
        return description
    } ()
    
    // Создаем инициализатор с параметром frame
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Добавляем картинку в ячейку
        addSubview(mainimageView)
        // Добавляем заголовок в ячейку
        addSubview(nameLabel)
        // Добавляем описание в ячейку
        addSubview(descriptionOfTravel)
        
        
        // Расставляем констрейнты для изображения
        mainimageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainimageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainimageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainimageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3).isActive = true
        
        // Расставляем констрейнты для заголовка
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: mainimageView.bottomAnchor, constant: 15).isActive = true
        
        //Расставляем констрейнты для текста
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
