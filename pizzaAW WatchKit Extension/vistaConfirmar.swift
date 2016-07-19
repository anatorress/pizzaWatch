//
//  vistaConfirmar.swift
//  pizzaAW
//
//  Created by Ana Torres on 19/07/16.
//  Copyright © 2016 Softm. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirmar: WKInterfaceController {

    @IBOutlet var labelOrden: WKInterfaceLabel!
    var tPizza: String = ""
    var mPizza: String = ""
    var qPizza: String = ""
    var ePizza:String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let contextExtras = context as! extrasPizza
        tPizza = contextExtras.sizeP
        mPizza = contextExtras.masaP
        qPizza = contextExtras.quesoP
        ePizza = contextExtras.extrasP
        print("Tamaño: \(tPizza)  Masa: \(mPizza) Queso: \(qPizza) Extras: \(ePizza)")
        labelOrden.setText("Tamaño: \(tPizza)\nMasa: \(mPizza)\nQueso: \(qPizza)\nExtras: \(ePizza)")
        //botonConfirmar.setEnabled(false)
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
