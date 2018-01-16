//
//  ViewController.swift
//  EjemploSegmentControl
//
//  Created by Christian Quicano on 1/11/18.
//  Copyright © 2018 Academia Moviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagenPrincipal: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBAction func cambiarImagen(_ sender: Any) {
        let index = segmentControl.selectedSegmentIndex
        var nombreImagen = ""
        if index == 0 {
            nombreImagen = "jobs"
        } else if index == 1 {
            nombreImagen = "mark"
        } else if index == 2 {
            nombreImagen = "woz"
        }
        imagenPrincipal.image = UIImage(named: nombreImagen)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("0.Carga la vista en memoria")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("1. A punto de aparecer")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("2. Apareció")
    }
    
    
    

}

