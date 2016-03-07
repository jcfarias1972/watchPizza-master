//
//  valor.swift
//  WatchPizza
//
//  Created by Juan Carlos Farías Arredondo on 20/02/16.
//  Copyright © 2016 ByFar2016. All rights reserved.
//

import WatchKit

class valor: NSObject {

    var tamañoSel:String=""
    var masaSel:String=""
    var quesoSel:String=""
    var totIng:Int=0

    //var ingredienteSel:[String]=[]
    
    var vIngredientes: Set<String> = []
    
    override init(){
        self.tamañoSel = ""
        self.masaSel=""
        self.quesoSel=""
        self.totIng=0
    }
    
    func setTamaño(tam:String)
    {
        self.tamañoSel = tam
    }
    
    func setMasa(mas:String)
    {
        self.masaSel = mas
    }
    
    func setQueso(que:String)
    {
        self.quesoSel = que
    }
    
    
    func addIngrediente(ing:String)->Int
    {
        vIngredientes.insert(ing)
        totIng++
        return totIng
    }
    
    func remIngrediente(ing:String)->Int
    {
        vIngredientes.remove(ing)
        totIng--
        return totIng
    }


    func totalIng() -> Int
    {
        return totIng
    }

    
    func imprimir()
    {
        print("valores: \(tamañoSel) - \(masaSel) - \(quesoSel)")
    }
    
}
