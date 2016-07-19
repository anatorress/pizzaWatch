//
//  vistaTam.swift
//  pizzaAW
//
//  Created by Ana Torres on 19/07/16.
//  Copyright © 2016 Softm. All rights reserved.
//

import WatchKit
import Foundation


class vistaTam: WKInterfaceController{

    @IBOutlet var botonChica: WKInterfaceButton!
    @IBOutlet var botonGrande: WKInterfaceButton!
    @IBOutlet var botonMediana: WKInterfaceButton!
    @IBOutlet var siguienteTam: WKInterfaceButton!
    var tam:String = ""
    let recuperados = NSUserDefaults.standardUserDefaults()

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
       //siguienteTam.setEnabled(false)
        let loadedString = recuperados.stringForKey("KeySize") ?? ""
        tam = loadedString
        
        if tam == "Chica"{
            sizeChica()
        }
        if tam == "Mediana"{
            sizeMediana()
        }
        if tam == "Grande"{
            sizeGrande()
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

    @IBAction func sizeChica() {
        tam = "Chica"
        print("Chica")
        botonChica.setBackgroundColor(UIColor.blueColor())
        botonMediana.setBackgroundColor(UIColor.blackColor())
        botonGrande.setBackgroundColor(UIColor.blackColor())
        siguienteTam.setEnabled(true)
    }
    
    @IBAction func sizeMediana() {
        tam = "Mediana"
        print("Mediana")
        botonChica.setBackgroundColor(UIColor.blackColor())
        botonMediana.setBackgroundColor(UIColor.blueColor())
        botonGrande.setBackgroundColor(UIColor.blackColor())
        siguienteTam.setEnabled(true)
    }
    
    @IBAction func sizeGrande() {
        tam = "Grande"
        print("Grande")
        botonChica.setBackgroundColor(UIColor.blackColor())
        botonMediana.setBackgroundColor(UIColor.blackColor())
        botonGrande.setBackgroundColor(UIColor.blueColor())
        siguienteTam.setEnabled(true)
    }
    
    @IBAction func agregarTam() {
        let valorContexto = sizePizza (s: tam)
        pushControllerWithName("selectMasa", context: valorContexto)
        recuperados.setObject(tam, forKey: "KeySize")
    }
    
}
