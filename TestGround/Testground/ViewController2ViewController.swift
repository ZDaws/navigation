
import UIKit

class ViewController2: UIViewController , UITableViewDataSource , UITableViewDelegate {

    
    struct Data {
        static var myNames = [String]()
    }

    var names = Data.myNames
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        tableView.dataSource = self
        
        //tableView.backgroundColor = UIColor.blackColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int   {
        
        return names.count
    }
    
    
    //@available(iOS 2.0, *)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("prototype1", forIndexPath: indexPath) as! CellTableViewCell
        
        cell.nameLabel?.text = names[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        names.removeAtIndex(indexPath.row)
        tableView.reloadData()
    }
    
    
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func updateTextField(sender: UIButton) {
        if textField.text! != ""   {
            names.append(textField.text!)
            tableView.reloadData()
            textField.text = ""
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
