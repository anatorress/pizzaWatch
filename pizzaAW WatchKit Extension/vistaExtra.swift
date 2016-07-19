//
//  vistaExtra.swift
//  pizzaAW
//
//  Created by Ana Torres on 19/07/16.
//  Copyright © 2016 Softm. All rights reserved.
//

import WatchKit
import Foundation


class vistaExtra: WKInterfaceController {
    
    var tPizza: String = ""
    var mPizza: String = ""
    var qPizza: String = ""
    var extras:String = ""
    var jamonAdd: Bool = false
    var pepperoniAdd: Bool = false
    var pavoAdd: Bool = false
    var salchichaAdd: Bool = false
    var aceitunaAdd: Bool = false
    var cebollaAdd: Bool = false
    var pimientoAdd: Bool = false
    var pinaAdd: Bool = false
    var anchoaAdd: Bool = false

    @IBOutlet var botonConfirmar: WKInterfaceButton!
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var pina: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    
    let recuperados = NSUserDefaults.standardUserDefaults()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let contextQueso = context as! quesoPizza
        tPizza = contextQueso.sizeP
        mPizza = contextQueso.masaP
        qPizza = contextQueso.quesoP
        print("Tamaño en extras: \(tPizza)  Masa en extras: \(mPizza) Queso en extras: \(qPizza)")
        
        if recuperados.boolForKey("KeyJamon"){
            jamon.setOn(true)
            jamonAdd = true
        }
        if recuperados.boolForKey("KeyPepperoni"){
            pepperoni.setOn(true)
            pepperoniAdd = true
        }
        
        if recuperados.boolForKey("KeyPavo"){
            pavo.setOn(true)
            pavoAdd = true
        }
        if recuperados.boolForKey("KeySalchicha"){
            salchicha.setOn(true)
            salchichaAdd = true
        }
        if recuperados.boolForKey("KeyAceituna"){
            aceituna.setOn(true)
            aceitunaAdd = true
        }
        if recuperados.boolForKey("KeyCebolla"){
            cebolla.setOn(true)
            cebollaAdd = true
        }
        if recuperados.boolForKey("KeyPimiento"){
            pimiento.setOn(true)
            pimientoAdd = true
        }
        if recuperados.boolForKey("KeyPina"){
            pina.setOn(true)
            pinaAdd = true
        }
        if recuperados.boolForKey("KeyAnchoa"){
            anchoa.setOn(true)
            anchoaAdd = true
        }
        extras = ""
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func agregarJamon(value: Bool) {
        if value{
            jamonAdd = true
            botonConfirmar.setEnabled(true)
        } else{
            jamonAdd = false
        }
        recuperados.setObject(value, forKey: "KeyJamon")
    }
    
    @IBAction func agregarPepperoni(value: Bool) {
        if value{
            pepperoniAdd = true
            botonConfirmar.setEnabled(true)
            
        } else{
            pepperoniAdd = false
        }
        recuperados.setObject(value, forKey: "KeyPepperoni")
    }
    
    @IBAction func agregarPavo(value: Bool) {
        if value{
            pavoAdd = true
            botonConfirmar.setEnabled(true)
            
        } else{
            pavoAdd = false
        }
        recuperados.setObject(value, forKey: "KeyPavo")
    }
    
    @IBAction func agregarSalchicha(value: Bool) {
        if value{
            salchichaAdd = true
            botonConfirmar.setEnabled(true)
            
        } else{
            salchichaAdd = false
        }
        recuperados.setObject(value, forKey: "KeySalchicha")
    }
    
    @IBAction func agregarAceituna(value: Bool) {
        if value{
            aceitunaAdd = true
            botonConfirmar.setEnabled(true)
            
        } else{
            aceitunaAdd = false
        }
        recuperados.setObject(value, forKey: "KeyAceituna")
    }
    
    @IBAction func agregarCebolla(value: Bool) {
        if value{
            cebollaAdd = true
            botonConfirmar.setEnabled(true)
            
        } else{
            cebollaAdd = false
        }
        recuperados.setObject(value, forKey: "KeyCebolla")
    }
    
    @IBAction func agregarPimiento(value: Bool) {
        if value{
            pimientoAdd = true
            botonConfirmar.setEnabled(true)
            
        } else{
            pimientoAdd = false
        }
        recuperados.setObject(value, forKey: "KeyPimiento")
    }
    
    @IBAction func agregarPina(value: Bool) {
        if value{
            pinaAdd = true
            botonConfirmar.setEnabled(true)
            
        } else{
            pinaAdd = false
        }
        recuperados.setObject(value, forKey: "KeyPina")
    }
    
    
    @IBAction func agregarAnchoa(value: Bool) {
        if value{
            anchoaAdd = true
            botonConfirmar.setEnabled(true)
            
        } else{
            anchoaAdd = false
        }
        recuperados.setObject(value, forKey: "KeyAnchoa")
    }
    
    
    @IBAction func agregarExtras() {
        extras = ""
        if jamonAdd{
            extras = extras + "Jamón "
        }
        
        if pepperoniAdd{
            extras = extras + "Pepperoni "
        }
        
        if pavoAdd{
            extras = extras + "Pavo "
        }
        
        if salchichaAdd{
            extras = extras + "Salchicha "
        }
        
        if aceitunaAdd{
            extras = extras + "Aceituna "
        }
        
        if cebollaAdd{
            extras = extras + "Cebolla "
        }
        
        if pimientoAdd{
            extras = extras + "Pimiento "
        }
        
        if pinaAdd{
            extras = extras + "Piña "
        }
        
        if anchoaAdd{
            extras = extras + "Anchoa "
        }
        
        if extras == ""{
            print("Selecciona al menos 1 ingrediente")
            let defaultAction = WKAlertAction(title: "OK", style: .Default, handler: {})
           presentAlertControllerWithTitle("Ingredientes extras", message: "Selecciona al menos \n1 ingrediente", preferredStyle: .Alert, actions: [defaultAction])
        }else{
        
            let valorContexto = extrasPizza (s: tPizza, m: mPizza, q: qPizza, e: extras)
            pushControllerWithName("selectConfirmar", context: valorContexto)
            print("\(tPizza) \(mPizza)  \(qPizza) \(extras)")
        }
        
    }
}
