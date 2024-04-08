//
//  ViewController.swift
//  appleGuidedProject
//
//  Created by Student on 26/02/24.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["buccaneer", "swift", "glorious",
                       "incandescent", "bug", "program"]

    let  incorrectMovesAllowed = 7
    
    var totalWins = 0
    
    var totalLosses = 0

            
    @IBOutlet weak var treeimageView: UIImageView!
    
    @IBOutlet weak var correctWordlabel: UILabel!
    
    @IBOutlet weak var scorelabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
    var currentGame : Game!   //(! => “the exclamation mark means that it's OK for this property not to have a value for a short period”)
    
    
    func newRound(){
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    func updateUI(){
        scorelabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeimageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}

