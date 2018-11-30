//
//  zoomViewController.swift
//  sldeshowapp
//
//  Created by 市澤樹享 on 2018/11/29.
//  Copyright © 2018 mikitaka.ichizawa. All rights reserved.
//

import UIKit

class zoomViewController: UIViewController {
 
    
    @IBOutlet weak var imageboard2: UIImageView!
    
    var count = 0
    var imgs = [UIImage(named:"IMG_1298.jpg"),UIImage(named:"IMG_1302.jpg"),UIImage(named:"IMG_1305.jpg")]
    
    @IBAction func back2(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageboard2.image = imgs[count]
        
        


        


        
    
   
     
        
        
        
        
 
        // Do any additional setup after loading the view.
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先_ViewControllerを取得する
        let ViewController:ViewController = segue.destination as! ViewController
        // 遷移先のzoomViewControllerで宣言しているx, countに代入して渡す
        ViewController.count = count
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
