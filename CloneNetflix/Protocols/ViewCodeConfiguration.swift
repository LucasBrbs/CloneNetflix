import Foundation
 
protocol ViewCodeConfiguration {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodeConfiguration{
    
    func configureView() {}
    
    func applyViewCode(){
        buildHierarchy()
        setupConstraints()
        configureViews()
    }
    
}
