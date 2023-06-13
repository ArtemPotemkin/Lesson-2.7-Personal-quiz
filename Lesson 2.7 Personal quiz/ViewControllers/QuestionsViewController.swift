//
//  ViewController.swift
//  Lesson 2.7 Personal quiz
//
//  Created by Артём Потёмкин on 08.06.2023.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multilpleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitch: [UISwitch]!
    
    @IBOutlet var rangeStackView: UIStackView!
    @IBOutlet var rangeSlider: UISlider!
    @IBOutlet var rangeLabels: [UILabel]!
    
    private let questions = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func singleActionButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func mulipleAnswerButtonPressed() {
    }
    
    @IBAction func rangeAnswerButtonPressed() {
    }
    
}

