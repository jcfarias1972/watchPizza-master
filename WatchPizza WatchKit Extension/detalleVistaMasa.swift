//
//  detalleVistaMasa.swift
//  WatchPizza
//
//  Created by Juan Carlos Farías Arredondo on 20/02/16.
//  Copyright © 2016 ByFar2016. All rights reserved.
//

import WatchKit
import Foundation


class detalleVistaMasa: WKInterfaceController {

    
    @IBOutlet var pickerMasa: WKInterfacePicker!
    
    let tipos :[String] = ["Delgada", "Gruesa", "Crunchi"]
    
    var valores = valor()
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! valor
        valores = c
        
        valores.imprimir()
        
        llenaPicker()
        
    }
    
    func llenaPicker()
    {
        
        var pickerItems:[WKPickerItem] = []
        
        for tipo in tipos
        {
            let item = WKPickerItem()
            item.title = tipo
            pickerItems.append(item)
        }
        
        self.pickerMasa.setItems(pickerItems)
        
    
        let indice : Int? = tipos.indexOf(valores.masaSel)
        if (indice != nil){
            pickerMasa.setSelectedItemIndex(indice!)
        }
        else
        {
            valores.setMasa(tipos[0])
        }
    }
    
    
    @IBAction func seleccionaPicker(value: Int) {
        valores.setMasa(tipos[value])
    }
    
    @IBAction func cambiaVista() {
        pushControllerWithName("vistaQueso", context: valores)
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
