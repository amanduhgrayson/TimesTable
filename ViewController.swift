//
//  ViewController.swift
//  TimesTable
//
//  Created by Amanda Grayson on 2/8/16.
//  Copyright © 2016 umsi363w16. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var multiplier: UILabel!
    @IBOutlet weak var slidervalue: UISlider!
    
    @IBAction func slidermoved(sender: UISlider) {
        print(slidervalue)
        table.reloadData()
    }
    
    @IBOutlet weak var table: UITableView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        let timesTable = Int(slidervalue.value * 12)
        cell.textLabel?.text = String(timesTable * indexPath.row)
        multiplier.text = String(timesTable)
        return cell
    }
    


}

