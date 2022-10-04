import UIKit

class HomeViewController: UIViewController {

    //Criar elemento da tabela dentro da VC
    private let homeFeedTable:UITableView = {
        let table = UITableView()
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        
        return table
    }()
    
      
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // isso poderia ficar em configure views?
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        
        
        // espaçamento da table view para a parte de cima da tela
        
        let headerView = HeroHeaderUiView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
        homeFeedTable.tableHeaderView = headerView
        
        applyViewCode()
    }
    
    //qual a necessidade e funcao dessa override func
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //isso poderia ficar em configure views
        homeFeedTable.frame = view.bounds
        
    }
    
    
}
 // Extensao para view code
extension HomeViewController:ViewCodeConfiguration {
    func buildHierarchy() {
        view.addSubview(homeFeedTable)
        
    }
    
    func setupConstraints() {
        print("")
    }
    
    func configureViews() {
        view.backgroundColor = .systemBackground
    }
    
    
}
// criacao da tabela
        
extension HomeViewController:UITableViewDelegate, UITableViewDataSource {
    //quantidade de elementos de uma tabela
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    
    //quantidade de tabelas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    // funcao para trazer as informacoes para a tela e identificar a tabela
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    // altura da tabela
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    // altura do header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}
