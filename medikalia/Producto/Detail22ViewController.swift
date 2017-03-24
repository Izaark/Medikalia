//
//  Detail22ViewController.swift
//  Producto
//
//  Created by Isaac López on 24/03/17.
//  Copyright © 2017 medicalia. All rights reserved.
//

import UIKit

class Detail22ViewController: UIViewController {

    @IBOutlet weak var image22: UIImageView!
    var recipe22 :Recipe2!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.image22.image = self.recipe22.image
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
extension Detail22ViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        //            switch section {
        //            case 0:
        //                return 2
        //            case 1:
        //                return self.recipe.ingredients.count
        //            case 2:
        //                return self.recipe.steps.count
        //            default:
        //                return 0
        //            }
        return 1
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailRecipeCell", for: indexPath) as! RecipeDetailTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.keylabel.text = "Nombre:"
            cell.valuelabel.text = self.recipe22.name
            
        case 1:
            cell.keylabel.text = "direccion:"
            cell.valuelabel.text = self.recipe22.address
        case 2:
            cell.keylabel.text = "telefono:"
            cell.valuelabel.text = self.recipe22.phone
        case 3:
            cell.keylabel.text = "reseña:"
            cell.valuelabel.text = self.recipe22.review
        default:
            break
        }
        return cell
    }
}

extension Detail22ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 2:
            
            let alertController = UIAlertController(title: "Contactar al Dr. \(self.recipe22.name!)", message: " Quieres llamar a este número ?\(self.recipe22.phone!)", preferredStyle: .actionSheet)
            
            let callAction = UIAlertAction(title: "Llamar", style: .default, handler: { (action) in
                if let phoneURL = URL(string:"tel://\(self.recipe22.phone!)"){
                    let app = UIApplication.shared
                    
                    
                    if app.canOpenURL(phoneURL){
                        app.open(phoneURL,options:[:],completionHandler:nil)
                    }
                }
            })
            alertController.addAction(callAction)
            
            let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true,completion: nil)
        default:
            break
        }
    }
    
    
}

