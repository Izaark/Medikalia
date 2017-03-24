//
//  GinecologiaTableViewController.swift
//  Producto
//
//  Created by Isaac López on 24/03/17.
//  Copyright © 2017 medicalia. All rights reserved.
//

import UIKit

class GinecologiaTableViewController: UITableViewController {

    var recipes : [Recipe3] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var recipe3 = Recipe3(name: "Oscar Mujica Calderón",
                             phone: "52(55)85264260",
                             image:#imageLiteral(resourceName: "oscar-mujica-calderon"),
                             address: "Hospital Español de México. Consultorio 903. Avenida Ejercito Nacional No. 613. Colonia Granada. 11520. Miguel Hidalgo",
                             review: "El Dr. Oscar Mujica Calderón es un Ginecólogo y Obstetra, su consultorio se encuentra en el Hospital Español de México, ubicado en la Ciudad de México.Lleva una carrera de más de 25 años y es experto en tratamientos para; el virus del papiloma humano (VPH), embarazo de alto riesgo, colposcopia, laparoscopia, endometriosis y miomas, solo por mencionar algunos. Egresó de la Universidad La Salle (ULSA) como Médico Cirujano y posteriormente realizó la Especialidad en Ginecología y Obstetricia en el Hospital Español de México. Diplomado en Colposcopia. Actualmente es Miembro del Consejo Mexicano de Ginecología y Obstetricia. Colegio Mexicano de Ginecología y Obstetricia. Miembro Fundador del AMEC. Socio Emérito de la AMMR. "
        )
        recipes.append(recipe3)
        
        recipe3 = Recipe3(name:"María de Lourdes Flores Islas",
                         phone:"52(55)85264260",
                         image:#imageLiteral(resourceName: "maria-de-lourdes-flores-islas"),
                         address:"Hospital Español. Sala 4. Consultorio 9. Ejército Nacional No. 613. Colonia Granada . 11520 Miguel Hidalgo",
                         
                         review:"La doctora María de Lourdes Flores Islas Ginecólogo y Obstetra, su consultorio se encuentra en el Hospital Español de México, ubicado en la Ciudad de México. Lleva una carrera de más de 25 años y es experto en tratamientos para; el virus del papiloma humano (VPH), embarazo de alto riesgo, colposcopia, laparoscopia, endometriosis y miomas, solo por mencionar algunos. Egresó de la Universidad La Salle (ULSA) como Médico Cirujano y posteriormente realizó la Especialidad en Ginecología y Obstetricia en el Hospital Español de México. Diplomado en Colposcopia. Actualmente es Miembro del Consejo Mexicano de Ginecología y Obstetricia. Colegio Mexicano de Ginecología y Obstetricia. Miembro Fundador del AMEC. Socio Emérito de la AMMR. ")
        recipes.append(recipe3)
        
        recipe3 = Recipe3(name:"Carlos Guillermo Maquita Nakano",
                         phone:"52(55)85264260",
                         image:#imageLiteral(resourceName: "carlos-guillermo-maquita-nakano"),
                         address:"Hospital Español de México. Consultorio 903. Avenida Ejercito Nacional No. 613. Colonia Granada. 11520. Miguel Hidalgo",
                         review:"El Dr. Carlos Guillermo Maquita Nakano es un Ginecólogo y Obstetra, su consultorio se encuentra en el Hospital Español de México, ubicado en la Ciudad de México. Lleva una carrera de más de 25 años y es experto en tratamientos para; el virus del papiloma humano (VPH), embarazo de alto riesgo, colposcopia, laparoscopia, endometriosis y miomas, solo por mencionar algunos. Egresó de la Universidad La Salle (ULSA) como Médico Cirujano y posteriormente realizó la Especialidad en Ginecología y Obstetricia en el Hospital Español de México. Diplomado en Colposcopia. Actualmente es Miembro del Consejo Mexicano de Ginecología y Obstetricia. Colegio Mexicano de Ginecología y Obstetricia. Miembro Fundador del AMEC. Socio Emérito de la AMMR. ")
        recipes.append(recipe3)
        
        recipe3 = Recipe3(name:"Francisco José Bernardez Zapata",
                         phone:"52(55)85264018",
                         image:#imageLiteral(resourceName: "francisco-jose-bernardez-zapata"),
                         address:"Hospital Español de México. Consultorio 903. Avenida Ejercito Nacional No. 613. Colonia Granada. 11520. Miguel Hidalgo",
                         review:"El Dr. Luis Simón Pereira es un Ginecólogo y Obstetra, su consultorio se encuentra en el Hospital Español de México, ubicado en la Ciudad de México. Lleva una carrera de más de 25 años y es experto en tratamientos para; el virus del papiloma humano (VPH), embarazo de alto riesgo, colposcopia, laparoscopia, endometriosis y miomas, solo por mencionar algunos. Egresó de la Universidad La Salle (ULSA) como Médico Cirujano y posteriormente realizó la Especialidad en Ginecología y Obstetricia en el Hospital Español de México. Diplomado en Colposcopia. Actualmente es Miembro del Consejo Mexicano de Ginecología y Obstetricia. Colegio Mexicano Ginecología y Obstetricia. Miembro Fundador del AMEC. Socio Emérito de la AMMR. ")
        recipes.append(recipe3)
        
        recipe3 = Recipe3(name:"Luis Simón Pereira",
                         phone:"+52(55)85264018",
                         image:#imageLiteral(resourceName: "luis-simon-pereira"),
                         address:"Hospital Ángeles Lomas, Vialidad de la Barranca, S/N, Colonia Valle de Las Palmas. 52763. Huixquilucan",
                         review:"El Dr. Gervith Reyes Soto es experto en neurología pediátrica. Durante su carrera destaca haber conseguido Mención Honorífica en cada una de sus facetas formativas. Además de su especialidad, cuenta con una maestría en ciencias médicas y un doctorado en neurología pediátrica, ambas por la UNAM.")
        recipes.append(recipe3)
        
        
        
        
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
            if segue.identifier == "showRecipew3" {
                if let indexPath = self.tableView.indexPathForSelectedRow {
                    let selectedRecipe3 = self.recipes[indexPath.row]
                    let destinationViewController = segue.destination as! Detail2ViewController
                    destinationViewController.recipe3 = selectedRecipe3
                }
            }
        }
    
    
}
