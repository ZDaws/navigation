//
//  Ajustable.swift
//  Testground
//
//  Created by KUSKE, JOEL on 12/2/15.
//  Copyright © 2015 HOLM, JOEL. All rights reserved.
//

import UIKit

class Ajustable: UIViewController {

    var screenSize: CGRect = UIScreen.mainScreen().bounds
    var width: CGFloat = 0.0
    var height: CGFloat = 0.0
    var viewFrame = CGRect(x: 0, y: 0, width: 0, height: 0)

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        width = screenSize.width
        height = screenSize.height
        print(width)
        print(height)
        viewFrame = CGRect(x: width / 5, y: height / 5, width: (width * 3) / 5, height: (height * 3) / 5)
        
        
        //view = RunnerView(frame: viewFrame, 5)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
