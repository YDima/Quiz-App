//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var score: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answer(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    
    @objc func updateUI() {
        question.text = quizBrain.getQuestionText()
        
        let answer = quizBrain.getAnswerText()
        answer1.setTitle(answer[0], for: .normal)
        answer2.setTitle(answer[1], for: .normal)
        answer3.setTitle(answer[2], for: .normal)
        
        progress.progress = quizBrain.getProgress()
        
        score.text = ("Score: \(quizBrain.getScore())")
        
        answer1.backgroundColor = UIColor.clear
        answer2.backgroundColor = UIColor.clear
        answer3.backgroundColor = UIColor.clear
    }
}

