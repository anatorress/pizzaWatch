//
//  vistaMasaInterfaceController.swift
//  pizzaAW
//
//  Created by Ana Torres on 19/07/16.
//  Copyright © 2016 Softm. All rights reserved.
//

import WatchKit
import Foundation


class vistaMasaInterfaceController: WKInterfaceController {
    
    var tPizza: String = ""
    var masa: String = ""
    
    @IBOutlet var botonDelgada: WKInterfaceButton!
    @IBOutlet var botonCrujiente: WKInterfaceButton!
    @IBOutlet var botonGruesa: WKInterfaceButton!
    @IBOutlet var botonSiguiente: WKInterfaceButton!
    let recuperados = NSUserDefaults.standardUserDefaults()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let contextSize = context as! sizePizza
        tPizza = contextSize.sizeP
        print("Tamaño en Masa: \(tPizza)")
        let loadedString = recuperados.stringForKey("KeyMasa") ?? ""
        masa = loadedString
        //botonSiguiente.setEnabled(false)
        if masa == "Delgada"{
            tipoDelgada()
        }
        if masa == "Crujiente"{
            tipoCrujiente()
        }
        if masa == "Gruesa"{
            tipoGruesa()
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

    @IBAction func tipoDelgada() {
        masa = "Delgada"
        botonDelgada.setBackgroundColor(UIColor.blueColor())
        botonCrujiente.setBackgroundColor(UIColor.blackColor())
        botonGruesa.setBackgroundColor(UIColor.blackColor())
        botonSiguiente.setEnabled(true)
    }
    
    @IBAction func tipoCrujiente() {
        masa = "Crujiente"
        botonDelgada.setBackgroundColor(UIColor.blackColor())
        botonCrujiente.setBackgroundColor(UIColor.blueColor())
        botonGruesa.setBackgroundColor(UIColor.blackColor())
        botonSiguiente.setEnabled(true)
    }
    
    
    @IBAction func tipoGruesa() {
        masa = "Gruesa"
        botonDelgada.setBackgroundColor(UIColor.blackColor())
        botonCrujiente.setBackgroundColor(UIColor.blackColor())
        botonGruesa.setBackgroundColor(UIColor.blueColor())
        botonSiguiente.setEnabled(true)
    }
    
    @IBAction func agregarMasa() {
        let valorContexto = masaPizza (s: tPizza, m: masa)
        pushControllerWithName("selectQueso", context: valorContexto)
        print("\(tPizza) \(masa)")
        recuperados.setObject(masa, forKey: "KeyMasa")
    }
    
}
