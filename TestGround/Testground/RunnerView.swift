
import UIKit

class RunnerView: UIView {
    
    var randomVariable:Int
    var viewSize: CGRect
    var labels: [UILabel] = []
    var width: CGFloat = 0.0
    var height: CGFloat = 0.0
    
    
    init(frame: CGRect, _ parRV: Int) {
        
        viewSize = frame
        randomVariable = parRV
        super.init(frame: frame)
        width = viewSize.width
        height = viewSize.height
        print("\(width), \(height)")

        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

        
    
  
    
    
}
