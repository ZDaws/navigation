

import UIKit

class Rectangle: UIView {

    
    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, 3.0)
        CGContextSetStrokeColorWithColor(context, UIColor.redColor().CGColor)
        
        let rect = CGRectMake(20, 20, 100, 200)
        CGContextAddRect(context, rect)
        CGContextStrokePath(context)
            
        
        
    }
    

}
