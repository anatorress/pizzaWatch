//
//  vistaQuesoInterfaceController.swift
//  pizzaAW
//
//  Created by Ana Torres on 19/07/16.
//  Copyright © 2016 Softm. All rights reserved.
//

import WatchKit
import Foundation


class vistaQuesoInterfaceController: WKInterfaceController {
    
    var tPizza: String = ""
    var mPizza: String = ""
    var queso: String = ""

    @IBOutlet var botonMozarela: WKInterfaceButton!
    @IBOutlet var botonCheddar: WKInterfaceButton!
    @IBOutlet var botonParmesano: WKInterfaceButton!
    @IBOutlet var botonSin: WKInterfaceButton!
    @IBOutlet var botonSiguiente: WKInterfaceButton!
    
    let recuperados = NSUserDefaults.standardUserDefaults()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let contextMasa = context as! masaPizza
        tPizza = contextMasa.sizeP
        mPizza = contextMasa.masaP
        print("Tamaño en Queso: \(tPizza)  Masa en Queso: \(mPizza)")
        //botonSiguiente.setEnabled(false)
        let loadedString = recuperados.stringForKey("KeyQueso") ?? ""
        queso = loadedString
        if queso == "Mozarela"{
            quesoMozarela()
        }
        if queso == "Cheddar"{
            quesoCheddar()
        }
        if queso == "Parmesano"{
            quesoParmesano()
        }
        if queso == "Sin Queso"{
            quesoSin()
        }

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        //botonSiguiente.setEnabled(false)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func quesoMozarela() {
        queso = "Mozarela"
        botonMozarela.setBackgroundColor(UIColor.blueColor())
        botonCheddar.setBackgroundColor(UIColor.blackColor())
        botonParmesano.setBackgroundColor(UIColor.blackColor())
        botonSin.setBackgroundColor(UIColor.blackColor())
        botonSiguiente.setEnabled(true)
    }
    
    @IBAction func quesoCheddar() {
        queso = "Cheddar"
        botonMozarela.setBackgroundColor(UIColor.blackColor())
        botonCheddar.setBackgroundColor(UIColor.blueColor())
        botonParmesano.setBackgroundColor(UIColor.blackColor())
        botonSin.setBackgroundColor(UIColor.blackColor())
        botonSiguiente.setEnabled(true)
    }
    
    @IBAction func quesoParmesano() {
        queso = "Parmesano"
        botonMozarela.setBackgroundColor(UIColor.blackColor())
        botonCheddar.setBackgroundColor(UIColor.blackColor())
        botonParmesano.setBackgroundColor(UIColor.blueColor())
        botonSin.setBackgroundColor(UIColor.blackColor())
        botonSiguiente.setEnabled(true)
    }
    
    @IBAction func quesoSin() {
        queso = "Sin Queso"
        botonMozarela.setBackgroundColor(UIColor.blackColor())
        botonCheddar.setBackgroundColor(UIColor.blackColor())
        botonParmesano.setBackgroundColor(UIColor.blackColor())
        botonSin.setBackgroundColor(UIColor.blueColor())
        botonSiguiente.setEnabled(true)
    }
    
    @IBAction func agregarQueso() {
        let valorContexto = quesoPizza (s: tPizza, m: mPizza, q: queso)
        pushControllerWithName("selectExtras", context: valorContexto)
        print("\(tPizza) \(mPizza)  \(queso)")
        recuperados.setObject(queso, forKey: "KeyQueso")
    }
   
}
