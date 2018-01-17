//
//  ViewController.swift
//  EjemploPickerView
//
//  Created by Christian Quicano on 1/16/18.
//  Copyright © 2018 Academia Moviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrayPaises = ["Perú", "Venezuela", "Colombia", "Argentina", "Chile", "Ecuador"]
    
    @IBOutlet weak var labelPaisSeleccionado: UILabel!
    @IBOutlet weak var cajaPais: UITextField!
    @IBOutlet weak var pickerPaises:UIPickerView!
    
    @IBAction func agregarPais(_ sender: Any) {
        if let nuevoPais = cajaPais.text {
            arrayPaises.append(nuevoPais)
        }
        pickerPaises.reloadAllComponents()
        cajaPais.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

extension ViewController:UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPaises.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let pais = arrayPaises[row]
        return pais
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let pais = arrayPaises[row]
        labelPaisSeleccionado.text = pais
    }

}









