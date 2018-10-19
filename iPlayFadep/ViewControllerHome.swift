//
//  ViewControllerHome.swift
//  iPlayFadep
//
//  Created by fadep on 06/10/18.
//  Copyright © 2018 fadep. All rights reserved.
//

import UIKit

class ViewControllerHome: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    let musicas = ["Cidade Vizinha - Henrique e Juliano", "Bem pior que eu - Marilia Mendonça ",
                   "Tô Voltando - Henrique e juliano", "O Bebê - MC Kevinho", "Camaro Amarelo - Pedro Paulo e Alex" ]
    
    let imagens = ["Henrique e Juliano", "Marilia Mendonça",
                    "Henrique e Juliano", "MC Kevinho", "Pedro Paulo e Alex" ]

    @IBOutlet weak var vrNomeUsuario: UILabel!
    @IBOutlet weak var vrTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "iPlayFadep"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        vrNomeUsuario.text = "Olá \(PersistenceManager.getNome())"
    }
    
    /***METODOS DE DATASOURCE DA TABLEVIEW***/
    func numberOfSections
        (in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return "Top Hits"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let proximaPagina = segue.destination as! ViewControllerDetail
        
        let linha = vrTableView.indexPathForSelectedRow?.row

        proximaPagina.imagemMusica = imagens[linha!]
        proximaPagina.nomeMusica = musicas[linha!]
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection
        section: Int) -> Int
    {
        return musicas.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath:
        IndexPath) -> UITableViewCell
    {
        let celula:CelulaController! = tableView.dequeueReusableCell(withIdentifier: "celula") as!
        CelulaController
        
        celula.vrImagemMusica.image =
            UIImage(named: imagens[indexPath.row])
        
        celula.vrNomeMusica.text = musicas[indexPath.row]
        
        return celula
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
