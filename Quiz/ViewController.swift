//
//  ViewController.swift
//  Quiz
//
//  Created by Shimbey Assie on 6/6/16.
//  Copyright © 2016 Shimbey Assie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //making the different buttons and labels as outlets

    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var LabelEnd: UILabel!
    
    @IBOutlet weak var Next: UIButton!
    
    //having the correct answer variable as a string
    
    var CorrectAnswer = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        RandomQuestions()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //this function holds the question to be asked
    // and the answers to the questions
    
    func RandomQuestions(){
        
        var RandomNumber = arc4random() % 9
        RandomNumber += 1
        
        
        switch (RandomNumber) {
        case 1:
            QuestionLabel.text = "How many planets are there?"
            
            Button1.setTitle("seven", forState: UIControlState.Normal)
            Button2.setTitle("eight", forState: UIControlState.Normal)
            Button3.setTitle("nine", forState: UIControlState.Normal)
            
            CorrectAnswer = "2"
            
            
            break
        case 2:
            
            
            QuestionLabel.text = "What continent is Egypt located in?"
            Button1.setTitle("Americas", forState: UIControlState.Normal)
            Button2.setTitle("Europe", forState: UIControlState.Normal)
            Button3.setTitle("Africa", forState: UIControlState.Normal)
            
            CorrectAnswer = "3"
            
            break
            
            
        case 3:
            
            QuestionLabel.text = "What is the capital of the United States of America?"
            
            Button1.setTitle("Washignton DC", forState: UIControlState.Normal)
            Button2.setTitle("New York", forState: UIControlState.Normal)
            Button3.setTitle("California", forState: UIControlState.Normal)
            
            CorrectAnswer = "1"
            break
            
        case 4:
            
            QuestionLabel.text = "What is the heaviest animal in the world?"
            
            Button1.setTitle("Elephant", forState: UIControlState.Normal)
            Button2.setTitle("Blue Whale", forState: UIControlState.Normal)
            Button3.setTitle("Hippopotamus", forState: UIControlState.Normal)
            
            CorrectAnswer = "2"
            
            break
        
        case 5:
            
            QuestionLabel.text = "When did World War 2 start?"
            
            Button1.setTitle("April 1880", forState: UIControlState.Normal)
            Button2.setTitle("December 1900", forState: UIControlState.Normal)
            Button3.setTitle("September 1939", forState: UIControlState.Normal)
            
            CorrectAnswer = "3"
            break
            
        case 6:
            
            QuestionLabel.text = "How many letter are there in the English Alphabet?"
            Button1.setTitle("26", forState: UIControlState.Normal)
            Button2.setTitle("15", forState: UIControlState.Normal)
            Button3.setTitle("23", forState: UIControlState.Normal)
            
            CorrectAnswer = "1"
            break
        
        case 7:
            
            QuestionLabel.text = "What is the name of a bird that does not fly?"
            
            Button1.setTitle("Rabbit", forState: UIControlState.Normal)
            Button2.setTitle("Ostrich", forState: UIControlState.Normal)
            Button3.setTitle("Eagle", forState: UIControlState.Normal)
            
            CorrectAnswer = "2"
            break
            
        case 8:
            
            QuestionLabel.text = "Which snake is venomous?"
            
            Button1.setTitle("Python", forState: UIControlState.Normal)
            Button2.setTitle("Garter Snake", forState: UIControlState.Normal)
            Button3.setTitle("Black Mamba", forState: UIControlState.Normal)
            
            CorrectAnswer = "3"
            break
            
        case 9:
            
            QuestionLabel.text = "Which country has the most people?"
            
            Button1.setTitle("United States", forState: UIControlState.Normal)
            Button2.setTitle("China", forState: UIControlState.Normal)
            Button3.setTitle("India", forState: UIControlState.Normal)
            
            CorrectAnswer = "2"
            break
            
        case 10:
            
            QuestionLabel.text = "World's most popular sport"
            Button1.setTitle("Cricket", forState: UIControlState.Normal)
            Button2.setTitle("American football", forState: UIControlState.Normal)
            Button3.setTitle("Soccer", forState: UIControlState.Normal)
            
            CorrectAnswer = "3"
            break
            
            
        default:
            break
        }
        
    }
    
    //making the label button hide
    
    
    func Hide(){
        LabelEnd.hidden=true
        Next.hidden=true
    }
    
    //desplaying the lable button 
    
    func UnHide() {
    
        LabelEnd.hidden=false
        Next.hidden = false
    }

    
    @IBAction func Button1Action(sender: AnyObject) {
        UnHide()
        //if they chose the correct answer then give them a feedback
        
        if(CorrectAnswer == "1"){
            LabelEnd.text = "Yay! Correct answer!"
            
        }else{ 
            LabelEnd.text = "Really! you are so wrong"
        }
    }
    
    
    
    @IBAction func Button2Action(sender: AnyObject) {
        UnHide()
        
        if(CorrectAnswer == "2"){
            
            LabelEnd.text = "Yay! Correct answer!"
            
            
        }else{
           LabelEnd.text = "Really! you are so wrong"
        }
    }
    
    
    
    @IBAction func Button3Action(sender: AnyObject) {
        //calling unhide function in the button actions
        UnHide()
        if(CorrectAnswer == "3"){
            
            LabelEnd.text = "Yay! Correct answer!"
            
        }else{
           LabelEnd.text = "Really! you are so wrong"
        }
    }
    

    @IBAction func Next(sender: AnyObject) {
        RandomQuestions()
        Hide()
    }

}

