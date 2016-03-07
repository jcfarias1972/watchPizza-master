//
//  detalleVistaIngredientes.swift
//  WatchPizza
//
//  Created by Juan Carlos Farías Arredondo on 20/02/16.
//  Copyright © 2016 ByFar2016. All rights reserved.
//

import WatchKit
import Foundation


class detalleVistaIngredientes: WKInterfaceController {

    
    var valores = valor()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! valor
        valores = c
        
        valores.imprimir()
        revisaSeleccionados()
    }
    
    @IBOutlet var btnSiguiente: WKInterfaceButton!
    
    @IBOutlet var selPep: WKInterfaceSwitch!
    @IBAction func llamaPep(value: Bool) {
        if value{
            agregaIngrediente("Peperoni", contr: 1)}
        else{
            quitaIngrediente("Peperoni")}
        
        print(valores.vIngredientes.enumerate())
    }
    
    @IBOutlet var selJam: WKInterfaceSwitch!
    @IBAction func llamaJam(value: Bool) {
        if value{
            agregaIngrediente("Jamon", contr: 2)}
        else{
            quitaIngrediente("Jamon")}
        
        print(valores.vIngredientes.enumerate())
    }
    
    @IBOutlet var selPav: WKInterfaceSwitch!
    @IBAction func llamaPav(value: Bool) {
        if value{
            agregaIngrediente("Pavo", contr: 3)}
        else{
            quitaIngrediente("Pavo")}
        
        print(valores.vIngredientes.enumerate())
    }
    
    @IBOutlet var selSal: WKInterfaceSwitch!
    @IBAction func llamaSal(value: Bool) {
        if value{
            agregaIngrediente("Salchicha", contr: 4)}
        else{
            quitaIngrediente("Salchicha")}
        
        print(valores.vIngredientes.enumerate())
    }
    
    @IBOutlet var selAce: WKInterfaceSwitch!
    @IBAction func llamaAce(value: Bool) {
        if value{
            agregaIngrediente("Aceituna", contr: 5)}
        else{
            quitaIngrediente("Aceituna")}
        
        print(valores.vIngredientes.enumerate())
    }
    
    @IBOutlet var selCeb: WKInterfaceSwitch!
    @IBAction func llamaCeb(value: Bool) {
        if value{
            agregaIngrediente("Cebolla", contr: 6)}
        else{
            quitaIngrediente("Cebolla")}
        
        print(valores.vIngredientes.enumerate())
    }
    
   
    @IBOutlet var selPim: WKInterfaceSwitch!
    @IBAction func llamaPim(value: Bool) {
        if value{
            agregaIngrediente("Pimiento", contr: 7)}
        else{
            quitaIngrediente("Pimiento")}
        
        print(valores.vIngredientes.enumerate())
    }
    
    @IBOutlet var selPiñ: WKInterfaceSwitch!
    @IBAction func llamaPiñ(value: Bool) {
        if value{
            agregaIngrediente("Piña", contr: 8)}
        else{
            quitaIngrediente("Piña")}
        
        print(valores.vIngredientes.enumerate())
    }
    
    
    @IBOutlet var selAlc: WKInterfaceSwitch!
    @IBAction func selAlc(value: Bool) {
        if value{
            agregaIngrediente("Alcachofa", contr: 9)}
        else{
            quitaIngrediente("Alcachofa")}
        
        print(valores.vIngredientes.enumerate())
    }
    
    
    func agregaIngrediente(ingred:String, contr:Int)
    {
        if valores.totIng<5
        {
            valores.addIngrediente(ingred)
            btnSiguiente.setEnabled(true)
        }
        else
        {
            
            switch contr{
            case 1:
                selPep.setOn(false)
            case 2:
                selJam.setOn(false)
            case 3:
                selPav.setOn(false)
            case 4:
                selSal.setOn(false)
            case 5:
                selAce.setOn(false)
            case 6:
                selCeb.setOn(false)
            case 7:
                selPim.setOn(false)
            case 8:
                selPiñ.setOn(false)
            case 9:
                selAlc.setOn(false)
            default: btnSiguiente.setEnabled(true)
                
            }
            pushControllerWithName("vistaMensaje", context: valores)
            
        }
    }
    
    func quitaIngrediente(ingred:String){
        valores.remIngrediente(ingred)
        if valores.totIng==0{
            //btnSiguiente.setEnabled(false)
        }
    }
    
    func revisaSeleccionados(){
        let ingSel = valores.vIngredientes
        for ingrediente in ingSel
        {
            switch ingrediente{
            case "Peperoni":
                selPep.setOn(true)
            case "Jamon":
                selJam.setOn(true)
            case "Pavo":
                selPav.setOn(true)
            case "Salchicha":
                selSal.setOn(true)
            case "Aceituna":
                selAce.setOn(true)
            case "Cebolla":
                selCeb.setOn(true)
            case "Pimiento":
                selPim.setOn(true)
            case "Piña":
                selPiñ.setOn(true)
            case "Alcachofa":
                selAlc.setOn(true)
            default: btnSiguiente.setEnabled(true)
                
            }
        }
    }
    
    @IBAction func cambiaVista() {
        if valores.totIng==0
        {
            pushControllerWithName("vistaMensaje1", context: valores)
        }
        else
        {
            pushControllerWithName("vistaConfirmacion", context: valores)
        }
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
