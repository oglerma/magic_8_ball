//
//  ViewController.swift
//  magic_8_ball
//
//  Created by Ociel Lerma on 4/2/18.
//  Copyright © 2018 Ociel Lerma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballPicture: UIImageView!
    let ballPictureArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getRandomNumber() -> Int {
        return Int(arc4random_uniform(5))
    }
    
    func getRandomImage(){
        ballPicture.image = UIImage(named: ballPictureArray[getRandomNumber()])
    }

    
    @IBAction func getAnswerBtn(_ sender: Any) {
        getRandomImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRandomImage()    
    }
}

