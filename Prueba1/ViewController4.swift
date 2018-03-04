//
//  ViewController4.swift
//  Prueba1
//
//  Created by macjj on 27/2/18.
//  Copyright © 2018 macjj. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var editText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? "") {
            
        case "ir6":
            guard let viewController5 = segue.destination as? ViewController5 else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            viewController5.contenido = editText.text ?? ""
        default:
            //Nada
            break
        } 
    }

}
