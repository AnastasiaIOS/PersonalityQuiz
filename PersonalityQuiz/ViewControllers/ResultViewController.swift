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
    
    private func howMuchAnimals() -> Int {
        
        for animal in finalArray {
            if animal.animal == .cat {
                catCount += 1
                
            }
            if animal.animal == .dog {
                dogCount += 1
                
            }
            if animal.animal == .rabbit {
                rabbitCount += 1
                
            }
            if animal.animal == .turtle {
                turtleCount += 1
                
            }
            
        }
        return catCount
        return dogCount
        return rabbitCount
        return turtleCount
    }
        
        var wildAnimals = ["cat": catCount,
                          "dog": dogCount,
                          "rabbit": rabbitCount,
                          "turtle": turtleCount]
    }
}
