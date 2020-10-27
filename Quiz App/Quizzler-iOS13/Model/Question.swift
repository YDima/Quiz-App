//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Dmytro Yurchenko on 8/30/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(text: String, answer: [String], correctAnswer: String) {
        self.text = text
        self.answer = answer
        self.correctAnswer = correctAnswer
    }
}
