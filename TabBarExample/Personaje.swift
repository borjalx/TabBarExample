//
//  Personaje.swift
//  TabBarExample
//
//  Created by Borja S on 16/01/2019.
//  Copyright © 2019 Borja S. All rights reserved.
//

import Foundation
import UIKit

class Personaje {
    var nombre:String
    var descripcion:String
    var imagen:UIImage
    
    init(nombre:String, descripcion:String, imagen:UIImage) {
        self.nombre = nombre
        self.descripcion = descripcion
        self.imagen = imagen
    }
}
