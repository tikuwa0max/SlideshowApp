//
//  ViewController.swift
//  sldeshowapp
//
//  Created by 市澤樹享 on 2018/11/28.
//  Copyright © 2018 mikitaka.ichizawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageboard: UIImageView!

    var imgs = [UIImage(named:"IMG_1298.jpg"),UIImage(named:"IMG_1302.jpg"),UIImage(named:"IMG_1305.jpg")]
    var count = 0
    
    @IBAction func next(_ sender: UIButton) {
        count += 1
        if count == 3{
            count = 0
        }
        imageboard.image = imgs[count]
    }
    
    @IBAction func back(_ sender: UIButton) {
        count -= 1
        if count == -1{
            count = 2
        }
        imageboard.image = imgs[count]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    imageboard.image = imgs[count]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

