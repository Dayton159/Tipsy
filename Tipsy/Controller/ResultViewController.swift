//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Dayton on 11/12/20.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    var bill:String?
    var tip:String?
    var split:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = bill
        settingsLabel.text = "Split between \(String(describing: split!)) people, with \(String(describing: tip!)) tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
