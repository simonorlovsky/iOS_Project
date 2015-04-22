//
//  ViewController.swift
//  ios_project
//
//  Created by Simon Orlovsky on 4/18/15.
//  Copyright (c) 2015 simonorlovsky. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    
    var items: [String] = ["Scroll", "Webview", "Textfields"]
    
    @IBAction func aboutPressed(sender: AnyObject) {
        performSegueWithIdentifier("About", sender: tableView)
        println("About clicked")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
        if indexPath.row == 0{
            performSegueWithIdentifier("Scroll", sender: tableView)
        }
        if indexPath.row == 1{
            performSegueWithIdentifier("Webview", sender: tableView)
        }

        if indexPath.row == 2{
            performSegueWithIdentifier("Textfields", sender: tableView)
        }
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

