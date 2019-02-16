//
//  ViewController.swift
//  SlotMaster
//
//  Created by Carson Yan on 2019-02-15.
//  Copyright © 2019 Carson Yan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var imgView1: UIImageView!
  @IBOutlet weak var imgView2: UIImageView!
  @IBOutlet weak var imgView3: UIImageView!
  @IBOutlet weak var points: UILabel!
  @IBOutlet weak var totalPoints: UILabel!
  
  var tp: Int = 0
  
  let imgNames = ["lemon", "dollarsign", "grapes", "number7", "cherries"]
  
  @IBAction func playBtnTapped(_ sender: UIButton) {
    
    let randomImageName1 = imgNames.randomElement()
    let randomImageName2 = imgNames.randomElement()
    let randomImageName3 = imgNames.randomElement()
    
    if let imageName1 = randomImageName1,
       let imageName2 = randomImageName2,
       let imageName3 = randomImageName3  {
       imgView1.image = UIImage(named: imageName1)
       imgView2.image = UIImage(named: imageName2)
       imgView3.image = UIImage(named: imageName3)
      
      checkPoints(a:imageName1, b:imageName2, c:imageName3)
    }
    
  }
  
  func checkPoints(a: String, b: String, c: String) {
    if a == b && b == c {
      points.text = "5 Points"
      tp += 5
    }else if a == c || a == b || b == c{
      points.text = "2 Points"
      tp += 2
    }else {
      points.text = ""
    }
    totalPoints.text = String(tp)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
}

