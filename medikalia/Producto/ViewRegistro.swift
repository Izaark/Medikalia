//
//  ViewRegistro.swift
//  Producto
//
//  Created by R Mac User on 3/23/17.
//  Copyright © 2017 medicalia. All rights reserved.
//

import UIKit

class ViewRegistro: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registroAccion(_ sender: UIButton) {
        let condiciones = "La presente aplicación tiene como finalidad recomendar un médico especialista al paciente. En ningún momento se busca generar autodiagnósticos y/o substituir a la consulta médica."
        
        let okAction = UIAlertAction(title: "Acepto", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "No acepto", style: .default, handler: { (action) in
            self.performSegue(withIdentifier: "noacepto", sender: nil)
        })
        
        let alert = UIAlertController(title: "TÉRMINOS Y CONDICIONES", message:condiciones , preferredStyle: .alert)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
        
        
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
