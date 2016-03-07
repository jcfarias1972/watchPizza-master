//
//  InterfaceController.swift
//  WatchPizza WatchKit Extension
//
//  Created by Juan Carlos Farías Arredondo on 19/02/16.
//  Copyright © 2016 ByFar2016. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var sliderTamaño: WKInterfaceSlider!
    @IBOutlet var lblTamaño: WKInterfaceLabel!
    
    var tamaño: String="Chica"
    var valores = valor()

    
    @IBAction func slidaerChange(value: Float) {
        cambiaTamaño(value)
    }
    
    func cambiaTamaño(value: Float) {
        switch value {
        case 0:
            tamaño = "Chica"
        
        case 1:
            tamaño = "Mediana"
        
        case 2:
            tamaño = "Grande"
            
        default:
            tamaño = "Otra"
        }
    
        lblTamaño.setText(tamaño)
        
        valores.setTamaño(tamaño)
        
        }
    
    
    @IBAction func cambiaVista() {
        pushControllerWithName("vistaMasa", context: valores)
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        valores.setTamaño(tamaño)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
