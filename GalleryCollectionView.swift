//
//  GalleryCollectionView.swift
//  TravelCollectionView
//
//  Created by Валентина Лучинович on 24.11.2021.
//

import UIKit

// Создаём кастомный класс UICollectionView, чтобы избежать того, что мы будем использовать
// и реализовывать все методы и свойства CollectionView только в ViewController

class GalleryCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //Создаем массив, содержащий все ячейки, которые мы будем получать
    var cells = [TravelModel]()
    
    // Создаем инициализатор, который будет содердать фрейм и макет CollectionView
    init() {
        let layout = UICollectionViewFlowLayout()
        // Выбираем горизонтальный скролл ячеек
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        delegate = self
        dataSource = self
        
        // Регистрируем ячейку созданную в GallaryCollectionViewCell
        register(GallaryCollectionViewCell.self, forCellWithReuseIdentifier: GallaryCollectionViewCell.reuseID)
        
        // При ручном изменении констрейтов данное свойство должно быть обозначено в false, иначе элементы отображаться не будут
        translatesAutoresizingMaskIntoConstraints = false
        
        // Задаем расстояние между ячеками
        layout.minimumLineSpacing = Constans.galleryMinimumLineSpasing
        // Задаем констрейты для ячейки
        contentInset = UIEdgeInsets(top: 0, left: Constans.leftDistanceToView, bottom: 0, right: Constans.rightDistanceToView)
    }
    
    // Функция отвечает за наполнение массива cells информацией
    func set(cells: [TravelModel]) {
        self.cells = cells
    }
    
    // Колличество ячеек в секции
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    // Настройка ячеек
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Добавляем переисспользуемую ячейку
        let cell = dequeueReusableCell(withReuseIdentifier: GallaryCollectionViewCell.reuseID, for: indexPath) as! GallaryCollectionViewCell
        // Добавляем в ячейку изображение
        cell.mainimageView.image = cells[indexPath.row].mainImage
        // Добавляем в ячеку заголовок
        cell.nameLabel.text = cells[indexPath.row].locationName
        // Добавляем в ячеку описание
        cell.descriptionOfTravel.text = cells[indexPath.row].description
        return cell
    }
    
    // Метод отвечает за размер ячеек и относиться к протоколу FlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constans.galeryItemWight, height: frame.height * 0.95)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
