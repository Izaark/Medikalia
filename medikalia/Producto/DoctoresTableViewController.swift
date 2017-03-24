//
//  DoctoresTableViewController.swift
//  Producto
//
//  Created by Isaac López on 24/03/17.
//  Copyright © 2017 medicalia. All rights reserved.
//

import UIKit

class DoctoresTableViewController: UITableViewController {

     var recipes : [Recipe] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var recipe = Recipe(name: "Dr Alberto Maya Epelstein",
                            phone: "52(222)2130165",
                            image:#imageLiteral(resourceName: "alberto-maya-epelstein"),
                            address: "Hospital Ángeles Pedregal. Camino a Sta. Teresa No. 1055. Jardines del Pedregal. D.F.. 10700 Magdalena Contreras",
                            review: "El Dr. Alberto Maya es un destacado Urólogo con más de 10 años de experiencia, Egresó como Médico Cirujano de la Universidad Popular Autónoma del Estado del Puebla, posteriormente se especializo en Urología dentro de la Universidad Nacional Autónoma de México"
        )
        recipes.append(recipe)
        
        recipe = Recipe(name:"Dr. José Salvador Aburto Morales",
                        phone:"52(55)85263483",
                        image:#imageLiteral(resourceName: "Dr.jose-salvador-aburto-morales"),
                        address:"Hospital Ángeles Pedregal. Camino a Sta. Teresa No. 1055. Jardines del Pedregal. D.F.. 10700 Magdalena Contreras",
                        review:"El Dr. José Aburto es un destacado Urólogo con más de 10 años de experiencia Egresó como Médico Cirujano de la Universidad Popular Autónoma del Estado del Puebla, posteriormente se especializo en Urología dentro de la Universidad Nacional Autónoma de México")
        recipes.append(recipe)
        
        recipe = Recipe(name:"Dr. Martín Telch",
                        phone:"52(55)95463484",
                        image:#imageLiteral(resourceName: "DRmartin-telich-vidal"),
                        address:"Hospital Ángeles Pedregal. Camino a Sta. Teresa No. 1055. Jardines del Pedregal. D.F.. 10700 Magdalena Contreras",
                        review:"El Dr Martín Telch es un destacado Urólogo con más de 10 años de experiencia. Egresó como Médico Cirujano de la Universidad Popular Autónoma del Estado del Puebla, posteriormente se especializo en Urología dentro de la Universidad Nacional Autónoma de México.")
        recipes.append(recipe)
        
        recipe = Recipe(name:"Dr. Albino Contreras Sanchez",
                        phone:"52(222)2130165",
                        image:#imageLiteral(resourceName: "Dralbino-contreras-sanchez"),
                        address:"Hospital Ángeles Pedregal. Camino a Sta. Teresa No. 1055. Jardines del Pedregal. D.F.. 10700 Magdalena Contreras",
                        review:"El Dr. Albino Contreras es un destacado Urólogo con más de 10 años de experiencia. Egresó como Médico Cirujano de la Universidad Popular Autónoma del Estado del Puebla, posteriormente se especializo en Urología dentro de la Universidad Nacional Autónoma de México.")
        recipes.append(recipe)
        
        recipe = Recipe(name:"Dr. Jeff Raúl Cortés Gonzáles",
                        phone:"15595538",
                        image:#imageLiteral(resourceName: "Drjeff-raul-cortes-gonzalez"),
                        address:"Hospital Ángeles Pedregal. Camino a Sta. Teresa No. 1055. Jardines del Pedregal. D.F.. 10700 Magdalena Contreras",
                        review:"El Dr. Jeff Cortés es un destacado Urólogo con más de 10 años de experiencia. Egresó como Médico Cirujano de la Universidad Popular Autónoma del Estado del Puebla, posteriormente se especializo en Urología dentro de la Universidad Nacional Autónoma de México.")
        recipes.append(recipe)
        

   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.recipes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellID = "RecipeCell"
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ReciveTableViewCell
        //cell.recipeImageView.image = recipe.image
        cell.thumimageView.image = recipe.image
        cell.namelabel.text = recipe.name
        cell.phonelabel.text = recipe.phone
        cell.addresslabel.text = recipe.address
        
        return cell

    }
    
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        //Compartir
        let shareAction = UITableViewRowAction(style: .default, title: "Compartir") { (action, indexPath) in
            
            let shareDefaultText = "te recomiendo al doctor \(self.recipes[indexPath.row].name!) por Medikalia echo en dev.f !!!"
            
            let activityController = UIActivityViewController(activityItems: [shareDefaultText, self.recipes[indexPath.row].image!], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
        }
        
        shareAction.backgroundColor = UIColor(red: 30.0/255.0, green: 164.0/255.0, blue: 253.0/255.0, alpha: 1.0)
        
        return [shareAction]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // let recipe = self.recipes[indexPath.row]
        
            }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipe" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let selectedRecipe = self.recipes[indexPath.row]
                let destinationViewController = segue.destination as! DetailViewController
                destinationViewController.recipe = selectedRecipe
            }
        }
    }

   
}
