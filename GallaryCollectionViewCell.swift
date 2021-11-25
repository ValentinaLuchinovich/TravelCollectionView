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
    }()
    
    let descriptionOfTravel: UITextView = {
        let description = UITextView()
        description.sizeToFit()
        description.isScrollEnabled = false
        description.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        description.textColor = .lightGray
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    
    
    // Создаем текстовый фрейм с информацией о путешествии

    
    // Создаем инициализатор с параметром frame
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Добавляем картинку в ячейку
        addSubview(mainimageView)
        // Добавляем заголовок в ячейку
        addSubview(nameLabel)
        // Добавляем описание в ячейку
        addSubview(descriptionOfTravel)
       
        backgroundColor = .white
        
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
        descriptionOfTravel.topAnchor.constraint(equalTo: mainimageView.bottomAnchor, constant: 30 + nameLabel.font.pointSize).isActive = true
        descriptionOfTravel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        descriptionOfTravel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        descriptionOfTravel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40).isActive = true
    }
    
    //Изменяем дизайн ячеек
    override func layoutSubviews() {
        super.layoutSubviews()
        //Закругляем углы ячеек
        self.layer.cornerRadius = 5
        // Добавляем тень
        self.layer.shadowRadius = 9
        // Устанавливаем прозрачность/размытие тени
        layer.shadowOpacity = 0.3
        // Задаем расположение тени
        layer.shadowOffset = CGSize(width: 5, height: 8)
        // Задаем границы представления
        self.clipsToBounds = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
