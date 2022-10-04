import UIKit

class HeroHeaderUiView: UIView {

    private let downloadButton: UIButton = {
         
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let playButton:UIButton = {
        
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let heroImageView:UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        
        return imageView
    }()
    
    //funcao de criar gradiente na tela
    private func addGradient() {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
            
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        heroImageView.frame = bounds
        
        applyViewCode()
        
    }
    
    required init?(coder:NSCoder){
        fatalError()
    }

}

extension HeroHeaderUiView: ViewCodeConfiguration{
    func buildHierarchy() {
        
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func configureViews() {
        
    }
    
    
}
