//
//  ViewController.swift
//  Lucky Number App
//
//  Created by Hiba Abdulla on 3/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    let numberArray = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    @IBOutlet weak var numberImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
changeNumbers()    }

    @IBAction func findButton(_ sender: UIButton) {
        
       changeNumbers()
        
    }
    
    func changeNumbers(){
        
        let randomNumber = arc4random_uniform(9)
        
        numberImage.image = UIImage(named: numberArray[Int(randomNumber)])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeNumbers()
    }
    
}

