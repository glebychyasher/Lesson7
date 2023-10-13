//
//  Question.swift
//  Lesson7
//
//  Created by Глеб Зобнин on 09.10.2023.
//

import Foundation

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    
    
}

enum ResponseType {
    case single
    case multiple
    case range
}

struct Answer {
    let title: String
    let animal: Animal
}


enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String { //Вы - кто-то. \(definition) (вычисляемое св-во)
        switch self {
        case .dog:
            "Вам нравится быть с друзьями. • Вы окружаете • себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            "Вы-себе на-уме.Любите-гулять сами…по-себе.«Вы-пенитеопиночество"
        case .rabbit:
            "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}

extension Question {
    static func getQuestion() -> [Question] {
        [Question(
            title: "Какую пищу вы предпочитаете?",
            type: .single,
            answers: [
                Answer(title: "Стейк", animal: .dog),
                Answer(title: "Рыба", animal: .cat),
                Answer(title: "Морковь", animal: .rabbit),
                Answer(title: "Капуста", animal: .turtle)
            ]),
        Question(
            title: "Что вам нравится больше?",
            type: .multiple,
            answers: [
                Answer(title: "Плавать", animal: .dog),
                Answer(title: "Спать", animal: .cat),
                Answer(title: "Обнимать", animal: .turtle),
                Answer(title: "Есть", animal: .rabbit)
            ]),
         Question(
             title: "Любите ли вы поездки на машине?",
             type: .range,
             answers: [
                Answer(title: "Ненавижу", animal: .cat),
                Answer(title: "Нервничую", animal: .rabbit),
                Answer(title: "Нормально", animal: .turtle),
                Answer(title: "Обожаю", animal: .dog)
             ])]
    }
}
