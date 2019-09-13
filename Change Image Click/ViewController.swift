//
//  ViewController.swift
//  Change Image Click
//
//  Created by COE-027 on 13/09/19.
//  Copyright © 2019 COE-027. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var Backhide: UIButton!
    @IBOutlet var Nexthide: UIButton!
    
    @IBOutlet weak var Imageview: UIImageView!
    
    var Image = 0
    
    @IBAction func Next(_ sender: UIView) {
        Image += 1
        lbl.text = String("\(Image)")
        self.Imagegallry()
    }
    
    
    @IBAction func Back(_ sender: UIView) {
        Image -= 1
        lbl.text = String("\(Image)")
        self.Imagegallry()
    }
    
    
    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Image = 1
        lbl.text = String("\(Image)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Imagegallry(){
        if Image == 1 {
            
            Backhide.isEnabled = false
            Imageview.image = UIImage(named: "1.jpeg")
            
        }
        if Image == 2 {
            
            Backhide.isEnabled = true
            Imageview.image = UIImage(named: "2.jpeg")
            
        }
        if Image == 3 {
            
            Imageview.image = UIImage(named: "3.jpeg")
            
        }
        if Image == 4 {
            Nexthide.isEnabled = true
            Imageview.image = UIImage(named: "4.jpeg")
            
        }
        if Image == 5 {
            Nexthide.isEnabled = false
            Imageview.image = UIImage(named: "5.jpeg")
            
        }
        
        
    }


}

