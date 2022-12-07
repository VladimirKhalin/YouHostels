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
    let cityCenter: Double
    let photos: [String]
    let saleImage: String
    let saleBool: Bool
    let price: Int
    let availableSeats: Int
    let info: String
}

struct Hostels {
    
    static let shared = Hostels()
    
    let hostels = [
        //Москва
        Hostel(sityName: "Москва", hostelName: "Есенин", rating: 8.8, fidbacks: 257, cityCenter: 4.1, photos: ["esenin01", "esenin02", "esenin03", "esenin04"], saleImage: "sale", saleBool: false, price: 1190, availableSeats: 12, info: "«Хостел Есенин» расположен в Москве. Этот хостел находится в 4 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Красносельская, Сад им. Баумана и Дом культуры им. Русакова."),
        Hostel(sityName: "Москва", hostelName: "Icon Hostel", rating: 8.6, fidbacks: 130, cityCenter: 5, photos: ["icon01", "icon02", "icon03", "icon04"], saleImage: "sale", saleBool: false, price: 2250, availableSeats: 5, info: "«Хостел Icon» находится в Москве. Этот хостел располагается В 5 км от центра города. Рядом с хостелом — Деловой центр (Солнцевская), Москва-Сити и Музей-панорама «Бородинская битва»."),
        Hostel(sityName: "Москва", hostelName: "Круассан", rating: 7.2, fidbacks: 218, cityCenter: 2, photos: ["kruassan01", "kruassan02", "kruassan03", "kruassan04"], saleImage: "sale", saleBool: false, price: 993, availableSeats: 22, info: "Хостел «Круассан на Павелецкой» находится в Москве. Этот хостел располагается в 2 км от центра города. Неподалёку: Таганская (Таганско-Краснопресненская), Театр на Таганке и Государственная Третьяковская галерея."),
        Hostel(sityName: "Москва", hostelName: "Qube Capsule", rating: 8.7, fidbacks: 225, cityCenter: 3, photos: ["qubecapsul01", "qubecapsul02", "qubecapsul03", "qubecapsul04"], saleImage: "sale", saleBool: true, price: 1182, availableSeats: 54, info: "Капсульный Отель Qube расположен в 3 км от центра города Москва."),
        Hostel(sityName: "Москва", hostelName: "Рус Авиатор", rating: 7.9, fidbacks: 78, cityCenter: 4, photos: ["rusaviator01", "rusaviator02", "rusaviator03", "rusaviator04"], saleImage: "sale", saleBool: false, price: 525, availableSeats: 32, info: "«Хостел Рус Авиатор» находится в Москве. Этот хостел располагается В 4 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Красносельская, Сад им. Баумана и Большой театр."),
        // Санкт-Петербург
        Hostel(sityName: "Санкт-Петербург", hostelName: "Roof Capsules", rating: 7.3, fidbacks: 151, cityCenter: 0.5, photos: ["roofcapsul01", "roofcapsul02", "roofcapsul03", "roofcapsul04"], saleImage: "sale", saleBool: false, price: 890, availableSeats: 90, info: "«Хостел Рус Авиатор» находится в Москве. Этот хостел располагается В 4 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Красносельская, Сад им. Баумана и Большой театр.")
    ]
    
    
    
}
