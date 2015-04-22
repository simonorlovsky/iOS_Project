//
//  ThirdViewController.swift
//  ios_project
//
//  Created by Simon Orlovsky on 4/20/15.
//  Copyright (c) 2015 simonorlovsky. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var displacementField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        textField.resignFirstResponder()
        displacementField.resignFirstResponder()
    }
    func isNumeric(a: String) -> Bool {
        if let n = a.toInt() {
            return true
        } else {
            return false
        }
    }
    
    @IBAction func SubmitPressed(sender: AnyObject) {
        println(textField.text)
        println(displacementField.text)
        if isNumeric(textField.text) && isNumeric(displacementField.text){
            resultLabel.text = String(textField.text.toInt()! + displacementField.text.toInt()!)
        }
        else{
            resultLabel.text = "Please enter numeric values"
        }
        
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
