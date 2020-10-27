//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Dmytro Yurchenko on 9/1/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(text: "Which is the largest organ in the human body?", answer: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(text: "Five dollars is worth how many nickels?", answer: ["25", "50", "100"], correctAnswer: "100"),
        Question(text: "What do the letters in the GMT time zone stand for?", answer: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(text: "What is the French word for 'hat'?", answer: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(text: "In past times, what would a gentleman keep in his fob pocket?", answer: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(text: "How would one say goodbye in Spanish?", answer: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(text: "Which of these colours is NOT featured in the logo for Google?", answer: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(text: "What alcoholic drink is made from molasses?", answer: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(text: "What type of animal was Harambe?", answer: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(text: "Where is Tasmania located?", answer: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var questionNumber = 0
    
    var score = 0
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        let actualAnswer = quiz[questionNumber].correctAnswer
        
        if userAnswer == actualAnswer {
            score += 1
            return true
        }
        else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber +  1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getAnswerText() -> [String] {
        return quiz[questionNumber].answer
    }
}
