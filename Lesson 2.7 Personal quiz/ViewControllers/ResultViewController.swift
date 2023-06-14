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
    
    @IBOutlet var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: true)
        
        
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
        
        // it works too:
        //dismiss(animated: true)
    }
    
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}

extension ResultViewController {
    
    
}
