//
//  extrasPizza.swift
//  pizzaAW
//
//  Created by Ana Torres on 19/07/16.
//  Copyright © 2016 Softm. All rights reserved.
//

import WatchKit

class extrasPizza: NSObject {
    var sizeP: String = ""
    var masaP: String = ""
    var quesoP: String = ""
    var extrasP: String = ""
    
    init(s: String, m: String, q: String, e: String){
        sizeP = s
        masaP = m
        quesoP = q
        extrasP = e
    }

}
