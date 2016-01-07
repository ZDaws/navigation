

import UIKit

class TestGround2: UIView {

    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, 4)
        CGContextSetStrokeColorWithColor(context, UIColor.purpleColor().CGColor)
        
        let rectangle = CGRectMake(50, 50, 50, 50)
        CGContextAddRect(context, rectangle)
        CGContextFillRect(context, rectangle)
        
        CGContextStrokePath(context)
        
    }


}

