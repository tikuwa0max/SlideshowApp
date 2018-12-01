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

    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var button: UIButton!
    
    var imgs = [UIImage(named:"IMG_1298.jpg"),UIImage(named:"IMG_1302.jpg"),UIImage(named:"IMG_1305.jpg")]
    var count = 0
    var timer:Timer!
    
    @IBAction func next(_ sender: UIButton) {
        if timer == nil{
        count += 1
        if count == 3{
            count = 0
        }
        
        imageboard.image = imgs[count]
        }
        }
    
    @IBAction func back(_ sender: UIButton) {
        if timer == nil{
        count -= 1
        if count == -1{
            count = 2
        }
        imageboard.image = imgs[count]
        }
        }
    
    
    @IBAction func startstop(_ sender: UIButton) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(autochange(_:)), userInfo: nil, repeats: true)
        button.setTitle("一時停止", for: .normal)
        nextbutton.isEnabled = false
        backbutton.isEnabled = false
        nextbutton.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.2)
        backbutton.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.2)
        }
            
        else{
        self.timer.invalidate()
        self.timer = nil
        button.setTitle("再生", for: .normal)
        nextbutton.isEnabled = true
        backbutton.isEnabled = true
        nextbutton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        backbutton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        }
        }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のzoomViewControllerを取得する
        let zoomViewController:zoomViewController = segue.destination as! zoomViewController
        // 遷移先のzoomViewControllerで宣言しているx, countに代入して渡す
        zoomViewController.count = count
           
            if self.timer != nil{
            self.timer.invalidate()
            self.timer = nil
            button.setTitle("再生", for: .normal)
            nextbutton.isEnabled = true
            backbutton.isEnabled = true
            nextbutton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
            backbutton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
            }
            
        }
            
    
    @objc func autochange(_ timer: Timer){
        count += 1
        if count == 3{
        count = 0
        }
        imageboard.image = imgs[count]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    imageboard.image = imgs[count]
        
 
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

