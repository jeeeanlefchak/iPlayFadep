//
//  ViewControllerDetail.swift
//  iPlayFadep
//
//  Created by fadep on 06/10/18.
//  Copyright © 2018 fadep. All rights reserved.
//

import UIKit

class ViewControllerDetail: UIViewController {
    
    @IBOutlet weak var vrImagenMusica: UIImageView!
    @IBOutlet weak var vrNomeMusica: UILabel!
    var nomeMusica:String?
    var imagemMusica:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        vrImagenMusica.image = UIImage(named: imagemMusica!)
        vrNomeMusica.text = nomeMusica!
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
