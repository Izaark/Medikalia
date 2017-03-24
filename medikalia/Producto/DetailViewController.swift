//
//  DetailViewController.swift
//  Producto
//
//  Created by Isaac López on 24/03/17.
//  Copyright © 2017 medicalia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var recipeImage: UIImageView!
    var recipe :Recipe!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.recipeImage.image = self.recipe.image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
