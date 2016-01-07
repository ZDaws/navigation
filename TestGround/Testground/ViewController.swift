
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addCounter: UILabel!
    var counter: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let btn: UIButton = UIButton(frame: CGRect(x: 0, y: 200, width: 100, height: 100))
        
        btn.backgroundColor = UIColor.redColor()
        btn.addTarget(self, action: "doWork:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
        
        //Create a text Field
        //Label for background color
        
        let height: CGFloat = 50
        let frm = CGRect(x: 0, y: 300, width: 100, height: height)
        let txtF = UITextField(frame: frm)
        let txtFB = UILabel(frame: frm)
        txtFB.backgroundColor = UIColor.grayColor()
        txtF.font = UIFont(name: txtF.font!.fontName, size: height)
        self.view.addSubview(txtFB)
        self.view.addSubview(txtF)
        
    
    
    
    }

    
    
    
    @IBAction func addButton(sender: UIBarButtonItem) {
        
        counter++
        var str = "\(counter)"
        addCounter.text = str
        
        
    }
    
      func doWork(button: UIButton)    {
        
        print("Yes")
    }
    
     
    

}

