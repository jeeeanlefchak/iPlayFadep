//
//  ViewControllerLogin.swift
//  iPlayFadep
//
//  Created by fadep on 06/10/18.
//  Copyright © 2018 fadep. All rights reserved.
//

import UIKit

class ViewControllerLogin: UIViewController {

    @IBOutlet weak var vrNomeUsuario: UITextField!
    @IBOutlet weak var vrLembrarme: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let nomeusuario = PersistenceManager.getNome()
        vrNomeUsuario.text = nomeusuario
        vrLembrarme.isOn = !nomeusuario.isEmpty
    }
    

    @IBAction func handleLogin(_ sender: Any) {
        if (!(vrNomeUsuario.text?.isEmpty)!) {
            let home = self.storyboard?.instantiateViewController(withIdentifier: "tabBarController") as! UITabBarController
            
            if (vrLembrarme.isOn) {
                PersistenceManager.save(nome: vrNomeUsuario.text!)
            }
            
            self.present(home, animated: true)
            
        } else {
            let alerta = UIAlertController(title: "Atenção", message: "Favor informar um usuário", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alerta, animated: true, completion: nil)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        vrNomeUsuario.resignFirstResponder()
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
