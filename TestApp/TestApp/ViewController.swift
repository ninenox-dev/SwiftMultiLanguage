//
//  ViewController.swift
//  TestApp
//
//  Created by Nisit Sirimarnkit on 13/1/2562 BE.
//  Copyright © 2562 ninenox.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func clickThai(_ sender: Any) {
        titleLabel.text = "Home".localized(lang: "th")
        
    }
    
    @IBAction func clickEnglish(_ sender: Any) {
        titleLabel.text = "Home".localized(lang: "en")
        
    }
    
    @IBOutlet var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension String {
    func localized(lang: String)->String{
        
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}

