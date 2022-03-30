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
    
    var finalArray: [Answer] = []
    var resultArray: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalArray = resultArray
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
        
      
    private func abrara() {
        
        var finalAnimal: Animal
    
        let wildAnimals = [Animal.cat: catCount,
                           Animal.dog: dogCount,
                           Animal.rabbit: rabbitCount,
                           Animal.turtle: turtleCount]
        
        for (animal, numberOfAnimal) in wildAnimals {
            
            if numberOfAnimal == 3 {
                finalAnimal = animal
            }
            
            else if numberOfAnimal == 2 {
                finalAnimal = animal.first.contains(2)
            
            }
        }
        
    }
    
    
    
   
    }

