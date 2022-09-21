//
//  ViewController.swift
//  Contry Foods
//
//  Created by samuel.araujo on 16/09/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var foods: [String] = []
    var foodsOrigin: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //lista de comidas
        foods.append("Wurst")
        foods.append("Parrillada")
        foods.append("Moussaka")
        foods.append("Lámen")
        foods.append("Pad Thai")
        foods.append("Menemen")
        foods.append("Spaghetti alla carbonara")
        foods.append("Ratatouille")
        foods.append("Bacalhau")
        foods.append("Pozole")
        foods.append("Borscht")
        foods.append("Chamuça")
        
        //lista de informações sobre as comidas
        foodsOrigin.append("Nem só de salsicha vive a culinária alemã, mas seria uma grande injustiça não dizer que é uma das comidas mais representativas do país.")
        foodsOrigin.append("Impossível falar em comida da Argentina sem falar das carnes. A parrillada é muito popular tanto na Argentina como no Uruguai.")
        foodsOrigin.append("A moussaka é o prato nacional da Grécia e sua versão original merece ser experimentada em sua viagem.")
        foodsOrigin.append("De origem chinesa, o lámen foi integrado à culinária japonesa e, atualmente, tem variações em regiões por todo a Ásia.")
        foodsOrigin.append("Não há nada mais típico na deliciosa comida tailandesa do que um bom Pad Thai servido com camarão e outros frutos do mar.")
        foodsOrigin.append("O Menemen é um tradicional prato da Turquia que é comumente consumido no café da manhã, servido com pão. ")
        foodsOrigin.append("O spaghetti alla carbonara é uma receita tradicional de massa italiana, sendo que o nome é derivado da palavra “carbone”, que significa carvão.")
        foodsOrigin.append("O ratatouille é uma receita francesa clássica em que os ingredientes principais são berinjela e tomate.")
        foodsOrigin.append("Ora, pois. Visitar Portugal e não experimentar um tradicional bacalhau é arrependimento na certa.")
        foodsOrigin.append("O pozole é tradicional da culinária do México e trata-se de uma espécie de sopa feita de milho, com carne de porco ou frango e diversos vegetais e outros ingredientes, como cebola, alface, queijo ou malagueta em pó.")
        foodsOrigin.append("O borsch é uma sopa muito consumida na Rússia e na Ucrânia, porém também encontrada em outros países do Leste Europeu como a Polônia e a Romênia.")
        foodsOrigin.append("A chamuça, também conhecida como samosa, é uma especialidade da Índia bem parecida com um pastelzinho servido muitas vezes como um aperitivo.")
        
    }
    //sobrescreve numero de sessoes da table view
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //sobrescreve o numero de linhas da tableview
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    //sobrescreve o conteudo de cada linha do tableview
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellName = "cellFood"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        
        cell.textLabel?.text = foods[indexPath.row]
    
        return cell
    }
    
    //sobrescreve seleção de um item na table view adicionando alerta
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //desativa seleção infinita (configura para selecionar e descelcionar
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        let alert = UIAlertController(title: "Info", message: foodsOrigin[indexPath.row], preferredStyle: .alert)
        
        let actionConfirm = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(actionConfirm)
        
        present(alert, animated: true, completion: nil)
        
    }

}

