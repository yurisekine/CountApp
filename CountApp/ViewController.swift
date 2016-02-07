//
//  ViewController.swift
//  CountApp
//
//  Created by SEKINE YURI on 2016/02/01.
//  Copyright © 2016年 SEKINE YURI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var wordlabel: UILabel!
    @IBOutlet var chocoimage: UIImageView!
    @IBOutlet var chocoimage2: UIImageView!
    @IBOutlet var baymax: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        if number >= 25 {
            wordlabel.text = "いい腹筋だね！"
            let bayImage: UIImage = UIImage(named: "baymax2.gif")!
            baymax.image = bayImage
        }
        if number >= 50 {
            wordlabel.text = "ムキムキだね！"
            let myImage: UIImage = UIImage(named: "choco.gif")!
            chocoimage.image = myImage
            let bayImage: UIImage = UIImage(named: "baymax3.gif")!
            baymax.image = bayImage
        }
        if number >= 75 {
            wordlabel.text = "腹筋が板チョコみたい！"
            let bayImage: UIImage = UIImage(named: "baymax4.gif")!
            baymax.image = bayImage
        }
        if number >= 100 {
            wordlabel.text = "板チョコの完成！お疲れ様！"
            let myImage: UIImage = UIImage(named: "choco2.gif")!
            chocoimage2.image = myImage
            let bayImage: UIImage = UIImage(named: "baymaxFin.gif")!
            baymax.image = bayImage
        }
        
    }
    @IBAction func clear() {
        number = 0
        label.text = String(number)
        wordlabel.text = "頑張って！"
        chocoimage.image = nil
        chocoimage2.image = nil
        let bayImage: UIImage = UIImage(named: "baymax.gif")!
        baymax.image = bayImage
    }
    

}

