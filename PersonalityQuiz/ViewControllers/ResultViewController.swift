//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Alexey Efimov on 30.08.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результат в соответствии с этим животным
    // 4. Избавиться от кнопки возврата на предыдущий экран
    
    @IBOutlet var resultSmileLabel: UILabel!
    @IBOutlet var defenitionLabel: UILabel!
    
    var catCount = 0
    var dogCount = 0
    var rabbitCount = 0
    var turtleCount = 0
    
    // var answers: [Answer]! < --- вопрос к реализации из разбора - Подскажите, пожалуйста, как так получается, что выбранные пользователем ответы сохраняются в этот массив? Только потому что мы объявили массив с типом Answer?Непонятно(((
    
    var finalArray: [Answer] = []
    var resultArray: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true // <---реализацию подсмотрела в разборе( подскажите, пожалуйста
        // как правильно  в документации надо было смотреть чтобы
        // понять что надо было сделать именно так
        finalArray = resultArray
        findMaxAnimals()
    }
    
    
    
    
    private func findMaxAnimals() {
        
        howMuchAnimals()
        
        let wildAnimals = [Animal.cat: catCount,
                           Animal.dog: dogCount,
                           Animal.rabbit: rabbitCount,
                           Animal.turtle: turtleCount]
        
        // след. реализацию также подсмотрела, т.к. не понимала как на языке написать алгоритм. В связи с этим вопросы, помогите, пожалуйста, разобраться:
        // 1) как понять, что тут можно использовать замыкания и откуда можно узнать, что можно таким образом сравнивать значения, т.е. использовать sorted и сравнивать значения указав их как $0.value.Я бы совсем не долгадалась работать со значениями через $0.value
        // 2) почему мы тут используем guard?
        // 3) А если у нас после прохождения теста получилось одинаковое кол-во животных, как в таком случае сработает алгоритм? просто берем первый из словаря?
        
        let sortedAnimals = wildAnimals.sorted { $0.value > $1.value }
        guard let firstSortedAnimals = sortedAnimals.first?.key else {return}
        
        updateResult(with: firstSortedAnimals)
        
    }
    
    private func howMuchAnimals() {
        
        for animal in finalArray {
            if animal.animal == .cat {
                catCount += 1
                
            }
            else if animal.animal == .dog {
                dogCount += 1
                
            }
            else if animal.animal == .rabbit {
                rabbitCount += 1
                
            }
            else if animal.animal == .turtle {
                turtleCount += 1
            }
        }
    }
    
    private func updateResult(with animal: Animal) {
        resultSmileLabel.text = "Вы - \(animal.rawValue)"
        defenitionLabel.text = animal.definition
    }
}








