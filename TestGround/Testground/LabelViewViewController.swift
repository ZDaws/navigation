//
//  LabelViewViewController.swift
//  Testground
//
//  Created by KUSKE, JOEL on 11/20/15.
//  Copyright © 2015 HOLM, JOEL. All rights reserved.
//

import UIKit

class LabelViewViewController: UIViewController {

    var screenSize: CGRect = UIScreen.mainScreen().bounds
    var width: CGFloat = 0.0
    var height: CGFloat = 0.0
    var myLabels: [UILabel] = []
    var myButtonsStop: [StopButton] = []
    var myButtonsLap: [StopButton] = []
    var myLaps: [Int] = []
    
    var nbh: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Get screen dimensions
        width = screenSize.width
        height = screenSize.height
        nbh = 64.0
        height -= nbh
        print(height)
        
        //Number of labels
        let numOfLabels: Int = 10
        
        for _ in 0...numOfLabels   {
            myLaps.append(0)
            
        }
        
        //Add the labels to the screen top to bottom each label fits the entire width but
        //evenly share the height.  On each label is it’s own number (ex: #1)
        for x in 0...numOfLabels	{
            //Labels
            let labelHeight: CGFloat = (height / CGFloat(numOfLabels))
            myLabels.append(UILabel(frame: CGRectMake((width/3), (nbh + (CGFloat(x) *
                labelHeight)) + 1, (2 * (width/3)), labelHeight - 1)))
            myLabels[x].text = "#\(x + 1)"
            myLabels[x].backgroundColor = UIColor.blueColor()
            myLabels[x].textAlignment = NSTextAlignment.Center
            myLabels[x].font = UIFont.systemFontOfSize(labelHeight)
            myLabels[x].textColor = UIColor.whiteColor()
            
            self.view.addSubview(myLabels[x])
            
            //Stop Buttons

            myButtonsStop.append(StopButton(frame: CGRectMake( 0, (nbh + (CGFloat(x) *
                labelHeight)) + 1,(width/6) - 1 , labelHeight - 1), x , true))
            
            myButtonsStop[x].titleLabel!.font = UIFont.systemFontOfSize(labelHeight / 2)
            myButtonsStop[x].addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
            myButtonsStop[x].layer.cornerRadius = 10.0
            myButtonsStop[x].clipsToBounds = true
            
            
            //Lap Buttons
            myButtonsLap.append(StopButton(frame: CGRectMake( (width / 6) , (nbh + (CGFloat(x) *
                labelHeight)) + 1,(width/6) - 1 , labelHeight - 1), x , false))
            
            
            
            
            //Both stop and lap
            if myButtonsStop[x].isStop  {
                
                myButtonsStop[x].backgroundColor = UIColor.redColor()
                myButtonsStop[x].setTitle("STOP", forState: .Normal)
            }
            else    {
                
                myButtonsStop[x].backgroundColor = UIColor.greenColor()
                myButtonsStop[x].setTitle("LAP", forState: .Normal)
            }
            
            
            myButtonsLap[x].titleLabel!.font = UIFont.systemFontOfSize(labelHeight / 2)
            myButtonsLap[x].addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
            myButtonsLap[x].layer.cornerRadius = 10.0
            myButtonsLap[x].clipsToBounds = true
            
            
            
            
            
            
            
            //   *******I'm not sure why the lap button has no color???*******
            //Because it only goes through the for loop 10 times not 20 
            
            self.view.addSubview(myButtonsStop[x])
            self.view.addSubview(myButtonsLap[x])
            
        }
        
        
        
        
        
        
    }

    
    func buttonPressed(button: StopButton) {
        if button.isStop    {
            myLabels[button.numRunner].text = "STOPPED"
            button.isStop = false
            
        } else  {
            myLaps[button.numRunner]++
            myLabels[button.numRunner].text = "Laps: \(myLaps[button.numRunner])"
        }
    
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
