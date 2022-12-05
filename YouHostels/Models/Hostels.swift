//
//  Hostels.swift
//  YouHostels
//
//  Created by Vladimir Khalin on 05.12.2022.
//

import Foundation


/*
 1. Город String
 2. Название хостела String
 3. Фотографии [UIImage]
 4. Описание String
 5. Количество мест для девочек Int
 6. Количество мест для мальчиков Int
 7. Лэйбл "Нет мест" Bool
 8. Лэйбл "Скидка" Bool
 */


struct Hostel {
    let sityName: String
    let hostelName: String
    let rating: Double
    let fidbacks: Int
    let cityCenter: Int
    let photos: [String]
    let saleImage: String
    let saleBool: Bool
    let noVacancyImage: String
    let noVacancyBool: Bool
    let price: Int
    let info: String
}

let hostels = [
    Hostel(sityName: "Москва", hostelName: "Есенин", rating: 4.6, fidbacks: 257, cityCenter: 4100, photos: ["esenin01", "esenin02", "esenin03", "esenin04"], saleImage: "sale", saleBool: false, noVacancyImage: "noVacancy", noVacancyBool: false, price: 2380, info: "«Хостел Есенин» расположен в Москве. Этот хостел находится в 4 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Красносельская, Сад им. Баумана и Дом культуры им. Русакова."),
    Hostel(sityName: "Москва", hostelName: "", rating: <#T##Double#>, fidbacks: <#T##Int#>, cityCenter: <#T##Int#>, photos: <#T##[String]#>, saleImage: <#T##String#>, saleBool: <#T##Bool#>, noVacancyImage: <#T##String#>, noVacancyBool: <#T##Bool#>, price: <#T##Int#>, info: <#T##String#>)

]

