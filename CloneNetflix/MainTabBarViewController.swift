import UIKit

class MainTabBarViewController: UITabBarController {

    let vc1 = UINavigationController (rootViewController: HomeViewController())
    let vc2 = UINavigationController(rootViewController: UpComingViewController())
    let vc3 = UINavigationController (rootViewController: SearchViewController())
    let vc4 = UINavigationController (rootViewController: DownloadsViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
        applyViewCode()
    }

    
}

extension MainTabBarViewController : ViewCodeConfiguration{
    func buildHierarchy() {
        print("")
    }
    
    func setupConstraints() {
        print("")
    }
    
    func configureViews() {
        view.backgroundColor = .systemBackground
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Top Search"
        vc4.title = "Dowloads"
        
        tabBar.tintColor = .label
    }
    
    
}

