//
//  SecondViewController.swift
//  ios_project
//
//  Created by Simon Orlovsky on 4/20/15.
//  Copyright (c) 2015 simonorlovsky. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let URL = "http://www.dormcuts.com"

    @IBOutlet var Web: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let URLRequest = NSURL(string: URL)
        let Request = NSURLRequest(URL: URLRequest!)
        Web.loadRequest(Request)
        
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
