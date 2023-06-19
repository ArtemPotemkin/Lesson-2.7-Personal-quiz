//
//  ResultViewController.swift
//  Lesson 2.7 Personal quiz
//
//  Created by Артём Потёмкин on 13.06.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    var resultAnswers: [Answer]!
    
    private var resultAnimals: [Animal] {
        resultAnswers.map {$0.animal}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        //navigationItem.hidesBackButton = true - вот получше решение для скрытия кнопки back
        calculateResult()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
        
        // it works too:
        //dismiss(animated: true)
    }
    
    // MARK: - Private Methods
    private func calculateResult() {
        var animalsCount: [Animal : Int] = [:]
        resultAnimals.forEach {
            animalsCount[$0, default: 0] += 1
        }
        let sortedAnimals = animalsCount.sorted { $0.value > $1.value}
        guard let finalAnimal = sortedAnimals.first?.key else { return }
        showResult(animal: finalAnimal)
    }
    
    private func showResult(animal: Animal) {
        resultLabel.text = "Вы - \(animal.rawValue)"
        definitionLabel.text = animal.definition
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}


