//
//  detalleVistaConfirmacion.swift
//  WatchPizza
//
//  Created by Juan Carlos Farías Arredondo on 20/02/16.
//  Copyright © 2016 ByFar2016. All rights reserved.
//

import WatchKit
import Foundation


class detalleVistaConfirmacion: WKInterfaceController {

    var valores = valor()
    var ingr = ""
    
    
    @IBOutlet var lblTam: WKInterfaceLabel!
    @IBOutlet var lblMas: WKInterfaceLabel!
    @IBOutlet var lblQue: WKInterfaceLabel!
    @IBOutlet var lblIng: WKInterfaceLabel!
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! valor
        valores = c
        
        lblTam.setText(c.tamañoSel)
        lblMas.setText(c.masaSel)
        lblQue.setText(c.quesoSel)
        
        
        for i in c.vIngredientes
        {
            if ingr == ""
            {
                ingr += " \(i)"
            }
            else
            {
                ingr += ", \(i)"
            }
           
        }
        
        lblIng.setText(ingr)
        
        valores.imprimir()
        
    }

    @IBAction func cambiaVista() {
        pushControllerWithName("vistaFin", context: valores)
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
