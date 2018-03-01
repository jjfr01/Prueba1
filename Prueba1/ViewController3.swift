//
//  ViewController3.swift
//  Prueba1
//
//  Created by macjj on 27/2/18.
//  Copyright © 2018 macjj. All rights reserved.
//

import UIKit
import os.log

class ViewController3: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, callBack {
    
    @IBOutlet weak var firstCollection: UICollectionView!
    
    var arrayNum = [Int]()
    var send : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.arrayNum += [1, 2, 3, 4, 5]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayNum.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : customCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "numCell", for: indexPath) as! customCell
        
        let num = self.arrayNum[indexPath.row]
        
        cell.indexPath = indexPath
        
        cell.callBack = self
        
        cell.labelCell.text = String(num)
        
        return cell
    }
    
    func obtenerProducto(indexPath: IndexPath) {
        let cell : customCell = firstCollection!.cellForItem(at: indexPath) as! customCell
        print(cell.labelCell.text)
        send = cell.labelCell.text
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let viewCellContent = segue.destination as? ViewCellContent else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        viewCellContent.contenido = send!
        
        //viewCellContent.contenido =
        
    }

}
