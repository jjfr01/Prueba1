//
//  ViewController5.swift
//  Prueba1
//
//  Created by macjj on 27/2/18.
//  Copyright © 2018 macjj. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var textView: UILabel!
    
    var contenido = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = contenido

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   

}
