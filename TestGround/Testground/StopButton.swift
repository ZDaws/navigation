//
//  StopButton.swift
//  Testground
//
//  Created by KUSKE, JOEL on 11/23/15.
//  Copyright © 2015 HOLM, JOEL. All rights reserved.
//

import UIKit

class StopButton: UIButton {

    //Instance Variables
    //num corresponds with the row that this button is placed
    var numRunner: Int
    var frm: CGRect
    var isStop: Bool
    
    
    init( frame: CGRect, _ num: Int, _ isStopButton: Bool )	{
        numRunner = num
        frm = frame
        isStop = isStopButton
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }



    
    //Look at that star app website tutorial
    
    
    
    /*
    override func drawRect(rect: CGRect) {
        // Drawing code
            
            
    }
    */

}
