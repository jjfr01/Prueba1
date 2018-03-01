//
//  ViewCellContent.swift
//  Prueba1
//
//  Created by OtroDam on 1/3/18.
//  Copyright © 2018 macjj. All rights reserved.
//

import UIKit

class ViewCellContent: UIViewController {

    @IBOutlet weak var labelContent: UILabel!
    
    var contenido : String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelContent.text = contenido

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
