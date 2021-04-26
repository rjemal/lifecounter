//
//  ViewController.swift
//  lifecounter
//
//  Created by Rawuda Jemal on 4/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1: UILabel!
    
    @IBOutlet weak var player2: UILabel!
    
    @IBOutlet weak var player3: UILabel!
    

    @IBOutlet weak var player4: UILabel!
    
    
    @IBOutlet weak var loser: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateScore(num: Int, goal: Int){
        switch goal {
        case 1:
            let life = Int(player1.text!)!
            let total = life + num
            player1.text = String(total)
            if (total <= 0){
                loser.text = "Player 1 loses"
            }
        case 2:
            let life = Int(player2.text!)!
            let total = num + life
            player2.text = String(total)
            if(total <= 0){
                loser.text = "Player 2 loses"
            }
        case 3:
            let life = Int(player3.text!)!
            let total = num + life
            player3.text = String(total)
            if(total <= 0){
                loser.text = "Player 3 loses"
            }
        case 4:
            let life = Int(player4.text!)!
            let total = num + life
            player4.text = String(total)
            if(total <= 0){
                loser.text = "Player 4 loses"
            }
        default:
            print("Error")
    }
    }
    
    
    
    @IBAction func minusFiveP1(_ sender: Any) {
        updateScore(num: -5, goal: 1)
    }
    
    @IBAction func minusP1(_ sender: Any) {
        updateScore(num: -1, goal: 1)
    }
    
    @IBAction func plusP1(_ sender: Any) {
        updateScore(num: 1, goal: 1)
    }
    
    @IBAction func plusFiveP1(_ sender: Any) {
        updateScore(num: 5, goal: 1)
    }
    
    @IBAction func minusFiveP2(_ sender: Any) {
        updateScore(num: -5, goal: 2)
    }
    
    
    @IBAction func minusP2(_ sender: Any) {
        updateScore(num: -1, goal: 2)
    }
    
    
    @IBAction func plusP2(_ sender: Any) {
        updateScore(num: 1, goal: 2)
    }
    
    
    @IBAction func plusFiveP2(_ sender: Any) {
        updateScore(num: 5, goal: 2)
    }
    
    
    @IBAction func minusFiveP3(_ sender: Any) {
        updateScore(num: -5, goal: 3)
    }
    
    
    @IBAction func minusP3(_ sender: Any) {
        updateScore(num: -1, goal: 3)
    }
    
    
    @IBAction func plusP3(_ sender: Any) {
        updateScore(num: 1, goal: 3)
    }
    
    
    @IBAction func plusFiveP3(_ sender: Any) {
        updateScore(num: 5, goal: 3)
        
    }
    
    @IBAction func minusFiveP4(_ sender: Any) {
        updateScore(num: -5, goal: 4)
    }
    
    
    @IBAction func minusP4(_ sender: Any) {
        updateScore(num: -1, goal: 4)
    }
    
    
    @IBAction func plusP4(_ sender: Any) {
        updateScore(num: 1, goal: 4)
    }
    
    
    @IBAction func plusFiveP4(_ sender: Any) {
        updateScore(num: 5, goal: 4)
    }
    
    
}

