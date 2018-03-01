//
//  customCell.swift
//  Prueba1
//
//  Created by macjj on 28/2/18.
//  Copyright © 2018 macjj. All rights reserved.
//

import UIKit

class customCell: UICollectionViewCell {
    
    @IBOutlet weak var labelCell: UILabel!
    
    var callBack : callBack? = nil
    var indexPath : IndexPath!
    
    @IBAction func cellButton(_ sender: UIButton) {
        callBack?.obtenerProducto(indexPath: indexPath)
    }
    
}
