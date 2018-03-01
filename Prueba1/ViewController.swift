//
//  ViewController.swift
//  Prueba1
//
//  Created by macjj on 27/2/18.
//  Copyright © 2018 macjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? ViewController2 {
            let contenido : String = sourceViewController.contenido
            
            textView.text = contenido
            
        }
    }

}

