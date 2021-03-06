//
//  TravelModel.swift
//  TravelCollectionView
//
//  Created by Валентина Лучинович on 24.11.2021.
//

import UIKit
import Foundation

// Структура с заготовками информации о наших путешествиях

struct TravelModel {
    var mainImage: UIImage
    var locationName: String
    var description: String
    
    static func fetchTravel() -> [TravelModel] {
        let firstItem = TravelModel(mainImage: UIImage(named: "Барселона")!,
                                    locationName: "Барселона",
                                    description: "Париж 🇫🇷, Рим 🇮🇹, а теперь ещё и Барселона 🇪🇸🙈 Три самых знаменитых города Европы теперь в моей копилке 💃🏻 Хотя отмечу, что от знаменитого Собора Святого Семейства я ожидала большего, его строят уже около 100 лет, но так и не закончили... Стройка идёт полным ходом (краны, рабочие на фасаде), внутри собор полностью функционирует, при том, что снаружи один из фасадов отсутсвует, нет нескольких башен и много чего другого по мелочи, но обещают достроить к 2026, что ж, посмотрим, верится с трудом🤔Чтоб закончить это огромное строение нужно снести целый квартал! Квартал, Карл! 😱")
        
        let secondItem = TravelModel(mainImage: UIImage(named: "Санкт-Петербург")!,
                                     locationName: "Крыши Санкт-Петербурга",
                                     description: "Впервые в жизни прогулялась по крышам лучшего города на Земле.")
        
        let thirdItem = TravelModel(mainImage: UIImage(named: "Дубай")!,
                                     locationName: "Дубай",
                                     description: "Объединённые Арабские Эмираты - это идеальное место, если берешь с собой круглую сумму денег и собираешься затусить в Дубае в одном из роскошных отелей где-нибудь на «пальме» 🏙 Другие сценарии тоже не плохи, но к ним уже начинают возникать вопросы 🤷🏻‍♀️ Я не устану повторять, что интересно везде, но Дубай это не всегда город с картинки... В первую очередь это город без истории, но в этом и есть его прелесть, мы можем воочию наблюдать, как он развивается здесь и сейчас, но нужно быть готовым к тому, что стройка тут повсюду, а часть интересных локаций - закрытая территория дорогих отелей 😒 \n Но с другой стороны сами факты того, что за 20 лет люди смогли в пустыне построить целую страну, подвести к каждой пальме систему полива, по сути создать экономику с нуля, привлечь огромные инвестиции со стороны бизнеса, а если у твоей семьи нет денег и твой ребёнок болен - шейх позаботится и отправит его на лечение в Германию - впечатляют 😌")
        
        let fouthItem = TravelModel(mainImage: UIImage(named: "Хельсинки")!,
                                     locationName: "Хельсинки",
                                     description: "Каждый раз приезжая в Финляндию расстраиваюсь, что десять лет учила язык, который мне толком ни разу не пригодился и уже совсем забылся 🤷🏻‍♀️ Но... Сегодня в Хельсинки на туалете вместо картинок 🚻 были буквы «M» и «N» и я вспомнила, что женщина по-фински – nainen💁🏻‍♀️ Считаю это за успех 😌")
        
        let fifthItem = TravelModel(mainImage: UIImage(named: "Байкал")!,
                                     locationName: "Байкал",
                                     description: "Россия - это очень красиво, но как-то очень сложно 😅 \n 6 часов перелёта (это если прямым рейсом), 3 часа на машине, 20 минут на пароме, 15 минут на УАЗике, так как дорог на Ольхоне как таковых нет, и вот ты только в начале поездки – в самом сердце Байкала 💙")
        return [fifthItem, secondItem, thirdItem, fouthItem, fifthItem]
    }
}

// Создаём констрейнты для ячейки
struct Constans {
    // Задаём расстояние до левой границы ячейки
    static let leftDistanceToView: CGFloat = 20
    // Задаём расстояние до правой границы ячейки
    static let rightDistanceToView: CGFloat = 20
    // Задаем расстояние между ячейками
    static let galleryMinimumLineSpasing: CGFloat = 20
    // Вычесляем ширину ячейки
    static let galeryItemWight = UIScreen.main.bounds.width - Constans.leftDistanceToView - Constans.rightDistanceToView
}
