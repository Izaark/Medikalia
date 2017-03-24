//
//  NeurologosTableViewController.swift
//  Producto
//
//  Created by Isaac López on 24/03/17.
//  Copyright © 2017 medicalia. All rights reserved.
//

import UIKit

class NeurologosTableViewController: UITableViewController {

    var recipes : [Recipe2] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var recipe = Recipe2(name: "Antonio Rizzoli Córdoba",
                            phone: "52(55)85262687",
                            image:#imageLiteral(resourceName: "antonio-rizzoli-cordoba"),
                            address: "Hospital Ángeles Pedregal. Camino a Sta. Teresa No. 1055. Jardines del Pedregal. D.F.. 10700 Magdalena Contreras",
                            review: "El Dr. Antonio Rizzoli Córdoba es experto en neurología pediátrica. Durante su carrera destaca haber conseguido Mención Honorífica en cada una de sus facetas formativas. Además de su especialidad, cuenta con una maestría en ciencias médicas y un doctorado en neurología pediátrica, ambas por la UNAM. Tiene una relevante trayectoria en la sanidad pública. Actualmente es, Jefe de la Unidad de Investigación en Neurodesarrollo en el Hospital Infantil de México Federico Gómez y recientemente fue Jefe de Servicio en la Dirección de Investigación de la misma institución."
        )
        recipes.append(recipe)
        
        recipe = Recipe2(name:"Horacio Reyes Vázquez",
                        phone:"52(55)41708928",
                        image:#imageLiteral(resourceName: "Dr.jose-salvador-aburto-morales"),
                        address:"Hospital Español. Sala 4. Consultorio 9. Ejército Nacional No. 613. Colonia Granada . 11520 Miguel Hidalgo",
                        
                        review:"El Dr. Horacio Reyes es Pediatra con más de 30 años de experiencia. cuenta con una especialización en Medicina Interna Pediátrica y es Presidente de la Asociación Pro Lactancia Materna de México desde 2007. Es Miembro de la Academia Méxicana de Pediatría y Titular de un Postgrado en Lactancia Materna en Wellstart, Universidad de San Diego, California, Estados Unidos. El Dr. Reyes brinda consulta en la Clínica Pediátrica Pigüi del Hospital Español ubicado en el Distrito Federal, misma que es reconocida como una de las clínicas infantiles más prestigiosas del país. Pertenece a numerosas asociaciones medicas y fue distinguido con el Premio Ixtilon de Oro Distrito Federal otorgado por la Asociación de Médicos del Hospital Infantil de México, entre otros reconocimientos.")
        recipes.append(recipe)
        
        recipe = Recipe2(name:"Sergio Díaz Madero",
                        phone:"52(55)95463484",
                        image:#imageLiteral(resourceName: "sergio-diaz-madero"),
                        address:"Hospital Ángeles Pedregal. Camino a Sta. Teresa No. 1055. Jardines del Pedregal. D.F.. 10700 Magdalena Contreras",
                        review:"El Dr sergio dias es un destacado pediatra con más de 10 años de experiencia. Egresó como Médico Cirujano de la Universidad Popular Autónoma del Estado del Puebla, posteriormente se especializo en Urología dentro de la Universidad Nacional Autónoma de México.")
        recipes.append(recipe)
        
        recipe = Recipe2(name:"Gervith Reyes Soto",
                         phone:"52(55)85264018",
                         image:#imageLiteral(resourceName: "gervith-reyes-soto"),
                         address:"Hospital Ángeles Lomas, Vialidad de la Barranca, S/N, Colonia Valle de Las Palmas. 52763. Huixquilucan",
                         review:"El Dr. Gervith Reyes Soto es experto en neurología pediátrica. Durante su carrera destaca haber conseguido Mención Honorífica en cada una de sus facetas formativas. Además de su especialidad, cuenta con una maestría en ciencias médicas y un doctorado en neurología pediátrica, ambas por la UNAM. Tiene una relevante trayectoria en la sanidad pública. Actualmente es, Jefe de la Unidad de Investigación en Neurodesarrollo en el Hospital Infantil de México Federico Gómez y recientemente fue Jefe de Servicio en la Dirección de Investigación de la misma institución.")
        recipes.append(recipe)
        
        recipe = Recipe2(name:"Rafael Edmundo Elizarrás Portillo",
                         phone:"+52(55)85264018",
                         image:#imageLiteral(resourceName: "rafael-edmundo-elizarraras-portillo"),
                         address:"Hospital Ángeles Pedregal. Camino a Sta. Teresa No. 1055. Jardines del Pedregal. D.F.. 10700 Magdalena Contreras",
                         review:"El Dr Rafael Edmundo es un destacado pediatra con más de 10 años de experiencia. Egresó como Médico Cirujano de la Universidad Popular Autónoma del Estado del Puebla, posteriormente se especializo en Urología dentro de la Universidad Nacional Autónoma de México.")
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
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showRecipew" {
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                let selectedRecipe = self.recipes[indexPath.row]
//                let destinationViewController = segue.destination as! DetailViewController
//                destinationViewController.recipe = selectedRecipe
//            }
//        }
//    }
    
    
}
