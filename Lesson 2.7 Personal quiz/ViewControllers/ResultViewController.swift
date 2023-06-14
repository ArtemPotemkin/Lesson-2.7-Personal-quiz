//
//  ResultViewController.swift
//  Lesson 2.7 Personal quiz
//
//  Created by Артём Потёмкин on 13.06.2023.
//

import UIKit

class ResultViewController: UIViewController {

    var resultAnswers: [Answer]!
    var resultAnimals: [Animal] {
        resultAnswers.map {$0.animal}
    }
    
    var animalsCount: [Animal : Int] = [:]
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: true)
        resultLabel.text = "Вы - \(calculateResult().rawValue)"
        definitionLabel.text = calculateResult().definition
        
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
        
        // it works too:
        //dismiss(animated: true)
    }
    
    private func calculateResult() -> Animal {
        resultAnimals.forEach {
            animalsCount[$0, default: 0] += 1
        }
        let sortedAnimals = animalsCount.sorted { $0.value > $1.value}
        return sortedAnimals[0].key
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}


