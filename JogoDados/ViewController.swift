//
//  ViewController.swift
//  JogoDados
//
//  Created by IFCE on 24/05/17.
//  Copyright © 2017 IFCE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Images
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    
    
    //Labels
    @IBOutlet weak var parOuImpar: UILabel!
    @IBOutlet weak var soma: UILabel!

    
    
    //fazer um array com for para popular! 
    
    var arrayImage: [UIImage] = [
        UIImage(named: "1.png")!,
        UIImage(named: "2.png")!,
        UIImage(named: "3.png")!,
        UIImage(named: "4.png")!,
        UIImage(named: "5.png")!,
        UIImage(named: "6.png")!
    ]
    
    @IBAction func botaoJogar(_ sender: UIButton) {
        //let arrayCount = UInt32(arrayImage.count)
        let unsignedRandomNumber = arc4random_uniform(UInt32(arrayImage.count))
        let unsignedRandomNumber2 = arc4random_uniform(UInt32(arrayImage.count))
        
        img1.image = randomImage(random: Int(unsignedRandomNumber))
        img2.image = randomImage(random: Int(unsignedRandomNumber2))
        
        soma.text = "\(unsignedRandomNumber + unsignedRandomNumber2 + 2)"//String(unsignedRandomNumber)
        
        if Int(soma.text!)! % 2 == 0 {
            parOuImpar.text = "é par! "
        } else {
            parOuImpar.text = "é impar!!"
        }
        
        
    }
    
    
    func randomImage(random: Int) -> UIImage {
        let randomNumber = Int(random)
        return arrayImage[randomNumber]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

