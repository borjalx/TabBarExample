//
//  ViewController.swift
//  TabBarExample
//
//  Created by Borja S on 16/01/2019.
//  Copyright © 2019 Borja S. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TVCustom
        
        myCell.chImg.image = simpsons[indexPath.row].imagen
        myCell.chName.text = simpsons[indexPath.row].nombre
        myCell.chDescription.text = simpsons[indexPath.row].descripcion
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    
    @IBOutlet weak var tableView: UITableView!
    
    var simpsons:[Personaje] = [
    Personaje(nombre: "Bart Simpson", descripcion: "Adolescente travieso que busca llamar la atención de sus padres", imagen: UIImage(named: "bart")!),
    Personaje(nombre: "Lisa Simpson", descripcion: "Niña superdotada autodidácta vegetariana budista", imagen: UIImage(named: "lisa")!),
    Personaje(nombre: "Maggie Simpson", descripcion: "Bebé de la familia con problemas del habla por sobreprotección", imagen: UIImage(named: "maggie")!),
    Personaje(nombre: "Marge Bouvier", descripcion: "Matriarca de la familia", imagen: UIImage(named: "marge")!),
    Personaje(nombre: "Homer Simpson", descripcion: "Patriarca con retraso y problemas de alcoholismo", imagen: UIImage(named:"homer")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

    //hola
    

}

