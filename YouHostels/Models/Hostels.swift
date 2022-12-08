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
    let saleBool: Bool
    let price: Int
    let availableSeats: Int
    var likeButton: Bool
    let info: String
}

struct Hostels {
    
    static let shared = Hostels()
    
    let hostels = [
        //Москва
        Hostel(sityName: "Москва", hostelName: "Есенин", rating: 8.8, fidbacks: 257, cityCenter: 4.1, photos: ["esenin01", "esenin02", "esenin03", "esenin04"], saleBool: false, price: 1190, availableSeats: 12, likeButton: false, info: "«Хостел Есенин» расположен в Москве. Этот хостел находится в 4 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Красносельская, Сад им. Баумана и Дом культуры им. Русакова."),
        Hostel(sityName: "Москва", hostelName: "Icon Hostel", rating: 8.6, fidbacks: 130, cityCenter: 5, photos: ["icon01", "icon02", "icon03", "icon04"], saleBool: false, price: 2250, availableSeats: 5, likeButton: false, info: "«Хостел Icon» находится в Москве. Этот хостел располагается В 5 км от центра города. Рядом с хостелом — Деловой центр (Солнцевская), Москва-Сити и Музей-панорама «Бородинская битва»."),
        Hostel(sityName: "Москва", hostelName: "Круассан", rating: 7.2, fidbacks: 218, cityCenter: 2, photos: ["kruassan01", "kruassan02", "kruassan03", "kruassan04"], saleBool: false, price: 993, availableSeats: 22, likeButton: false, info: "Хостел «Круассан на Павелецкой» находится в Москве. Этот хостел располагается в 2 км от центра города. Неподалёку: Таганская (Таганско-Краснопресненская), Театр на Таганке и Государственная Третьяковская галерея."),
        Hostel(sityName: "Москва", hostelName: "Qube Capsule", rating: 8.7, fidbacks: 225, cityCenter: 3, photos: ["qubecapsul01", "qubecapsul02", "qubecapsul03", "qubecapsul04"], saleBool: true, price: 1182, availableSeats: 54, likeButton: false, info: "Капсульный Отель Qube расположен в 3 км от центра города Москва."),
        Hostel(sityName: "Москва", hostelName: "Рус Авиатор", rating: 7.9, fidbacks: 78, cityCenter: 4, photos: ["rusaviator01", "rusaviator02", "rusaviator03", "rusaviator04"], saleBool: false, price: 525, availableSeats: 32, likeButton: false, info: "«Хостел Рус Авиатор» находится в Москве. Этот хостел располагается В 4 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Красносельская, Сад им. Баумана и Большой театр."),
        // Санкт-Петербург
        Hostel(sityName: "Санкт-Петербург", hostelName: "Roof Capsules", rating: 7.3, fidbacks: 151, cityCenter: 0.5, photos: ["roofcapsul01", "roofcapsul02", "roofcapsul03", "roofcapsul04"], saleBool: false, price: 890, availableSeats: 90, likeButton: false, info: "«Хостел Рус Авиатор» находится в Москве. Этот хостел располагается В 4 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Красносельская, Сад им. Баумана и Большой театр."),
        Hostel(sityName: "Санкт-Петербург", hostelName: "Скандинавия", rating: 7.9, fidbacks: 78, cityCenter: 2, photos: ["scandinavia01", "scandinavia02", "scandinavia03", "scandinavia04"], saleBool: false, price: 480, availableSeats: 5, likeButton: false, info: "«Хостел Скандинавия» находится в Санкт-Петербурге. Это жилое помещение располагается в пешей доступности от центра города. Рядом с жилым помещением — Анненкирхе, Чернышевская и Михайловский замок."),
        Hostel(sityName: "Санкт-Петербург", hostelName: "Bigland", rating: 9.7, fidbacks: 144, cityCenter: 0.5, photos: ["bigland01", "bigland02", "bigland03", "bigland04"], saleBool: true, price: 750, availableSeats: 55, likeButton: false, info: "Хостел Bigland располагается в Санкт-Петербурге. Рядом — «Адмиралтейская», Здание Адмиралтейства и Исаакиевский Собор."),
        Hostel(sityName: "Санкт-Петербург", hostelName: "Друзья на Восстания", rating: 7.2, fidbacks: 317, cityCenter: 2.6, photos: ["friendsvosstaniya01", "friendsvosstaniya02", "friendsvosstaniya03", "friendsvosstaniya04"], saleBool: false, price: 408, availableSeats: 30, likeButton: false, info: "Хостел Bigland располагается в Санкт-Петербурге. Рядом — «Адмиралтейская», Здание Адмиралтейства и Исаакиевский Собор."),
        Hostel(sityName: "Санкт-Петербург", hostelName: "Simple Italy", rating: 8.8, fidbacks: 57, cityCenter: 1.3, photos: ["simpleitaly01", "simpleitaly02", "simpleitaly03", "simpleitaly04"], saleBool: false, price: 388, availableSeats: 22, likeButton: false, info: "«Хостел Simple Italy» располагается в Санкт-Петербурге. Этот хостел находится в пешей доступности от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Площадь Искусств, Русский музей и Михайловский замок."),
        Hostel(sityName: "Санкт-Петербург", hostelName: "Strawberry Duck", rating: 8.6, fidbacks: 238, cityCenter: 3, photos: ["strawberryduck01", "strawberryduck02", "strawberryduck03", "strawberryduck04"], saleBool: true, price: 492, availableSeats: 10, likeButton: false, info: "«Хостел Strawberry Duck St. Petersburg» находится в Санкт-Петербурге. Этот хостел расположен В 3 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Балтийская, Мариинский театр и Юсуповский дворец."),
        // Екатеринбург
        Hostel(sityName: "Екатеринбург", hostelName: "Roomy Hostel", rating: 8.9, fidbacks: 289, cityCenter: 0.9, photos: ["roomy01", "roomy02", "roomy03", "roomy04"], saleBool: false, price: 400, availableSeats: 30, likeButton: false, info: "«Хостел Roomy» располагается в Екатеринбурге. Этот хостел находится неподалёку от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Памятник клавиатуре, Екатеринбургский музей изобразительных искусств и Площадь 1905 года."),
        Hostel(sityName: "Екатеринбург", hostelName: "Никольский", rating: 8.8, fidbacks: 170, cityCenter: 0.9, photos: ["nikolskiy01", "nikolskiy02", "nikolskiy03", "nikolskiy04"], saleBool: false, price: 647, availableSeats: 10, likeButton: false, info: "«Хостел Гостевой дом Никольский» находится в Екатеринбурге. Этот хостел располагается 1 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Екатеринбургский зоопарк, Памятник клавиатуре и Свято-Троицкий Кафедральный собор."),
        Hostel(sityName: "Екатеринбург", hostelName: "R.E.D.", rating: 7.7, fidbacks: 84, cityCenter: 1.4, photos: ["red01", "red02", "red03", "red04"], saleBool: true, price: 567, availableSeats: 25, likeButton: false, info: "«Хостел R.E.D.» находится в Екатеринбурге. Этот хостел располагается В пешей доступности от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Динамо, Смотровая площадка на здании «Высоцкий» и Ельцин Центр."),
        Hostel(sityName: "Екатеринбург", hostelName: "Story", rating: 7.8, fidbacks: 178, cityCenter: 1.8, photos: ["story01", "story02", "story03", "story04"], saleBool: false, price: 474, availableSeats: 25, likeButton: false, info: "«Хостел Story» находится в Екатеринбурге. Этот хостел расположен Неподалёку от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Динамо, Смотровая площадка на здании «Высоцкий» и Ельцин Центр."),
        Hostel(sityName: "Екатеринбург", hostelName: "DoBeDo", rating: 8.2, fidbacks: 114, cityCenter: 0.9, photos: ["dobedo01", "dobedo02", "dobedo03", "dobedo04"], saleBool: true, price: 586, availableSeats: 25, likeButton: false, info: "«Хостел DoBeDo» располагается в Екатеринбурге. Этот хостел находится в пешей доступности от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Екатеринбургский театр оперы и балета, Музей истории Екатеринбурга и Екатеринбургский зоопарк."),
        Hostel(sityName: "Екатеринбург", hostelName: "Пушкин Street", rating: 7.1, fidbacks: 111, cityCenter: 0.4, photos: ["pushkinst01", "pushkinst02", "pushkinst03", "pushkinst04"], saleBool: false, price: 450, availableSeats: 3, likeButton: false, info: "«ПушкинStreet (Пушкин Cтрит)» находится в Екатеринбурге. Этот хостел располагается В центре города. Перед сном есть возможность прогуляться вдоль главных достопримечательностей. Рядом с хостелом можно прогуляться. Неподалёку: Екатеринбургский музей изобразительных искусств, Памятник клавиатуре и Музей истории камнерезного и ювелирного искусства."),
        Hostel(sityName: "Екатеринбург", hostelName: "Вокруг Света", rating: 9.7, fidbacks: 59, cityCenter: 2.7, photos: ["vokrugsveta01", "vokrugsveta02", "vokrugsveta03", "vokrugsveta04"], saleBool: false, price: 500, availableSeats: 36, likeButton: true, info: "«Хостел Вокруг Света» находится в Екатеринбурге. Этот хостел располагается В 3 км от центра города. Рядом с хостелом можно прогуляться. Неподалёку: Стадион «Екатеринбург Арена», Улица Вайнера и Геологическая.")
    ]
    
    
    
}
