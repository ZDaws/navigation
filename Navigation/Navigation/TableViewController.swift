//
//  TableViewController.swift
//  Navigation
//
//  Created by KUSKE, JOEL on 12/14/15.
//  Copyright © 2015 HOLM, JOEL. All rights reserved.
//

import UIKit



struct MyVariables {
    static var yourVariable = "someString"
    static var name = ""
    static var runner:[Runner] = []
        
}




class TableViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var events:[String] = []
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        
        
        
        
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("prototype1", forIndexPath: indexPath)
        cell.textLabel?.text = events[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
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
