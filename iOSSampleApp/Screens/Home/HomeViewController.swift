import UIKit

class HomeViewController: UIViewController {

    lazy var serverTitleLabel: UILabel = UI.label(title: "Server:")
    lazy var localTitleLabel: UILabel = UI.label(title: "Local:")
    lazy var serverLabel: UILabel = UI.label(title: "loading...")
    lazy var localLabel: UILabel = UI.label(title: "loading...")
    lazy var refreshServerButton: UIButton = UI.refreshButton()
    lazy var refreshLocalButton: UIButton = UI.refreshButton()
    lazy var subscribeButton: UIButton = UI.subscribeButton()
    
    func layout() {
        self.view.addSubview(localTitleLabel)
        self.view.addSubview(serverTitleLabel)
        self.view.addSubview(localLabel)
        self.view.addSubview(serverLabel)
        self.view.addSubview(refreshServerButton)
        self.view.addSubview(refreshLocalButton)
        self.view.addSubview(subscribeButton)
        
        let serverLayoutGuide = UILayoutGuide()
        serverLayoutGuide.identifier = "server"
        self.view.addLayoutGuide(serverLayoutGuide)
        
        let localLayoutGuide = UILayoutGuide()
        localLayoutGuide.identifier = "local"
        self.view.addLayoutGuide(localLayoutGuide)
        
        NSLayoutConstraint.activate([
            
            serverLayoutGuide.heightAnchor.constraint(equalToConstant: 54),
            localLayoutGuide.heightAnchor.constraint(equalToConstant: 54),
            
            serverLayoutGuide.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            localLayoutGuide.topAnchor.constraint(equalTo: serverLayoutGuide.bottomAnchor, constant: 10),
            subscribeButton.topAnchor.constraint(equalTo: localLayoutGuide.bottomAnchor, constant: 10),
            
            
            serverLayoutGuide.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            localLayoutGuide.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            subscribeButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            
            
            serverTitleLabel.leadingAnchor.constraint(equalTo: serverLayoutGuide.leadingAnchor),
            serverLabel.leadingAnchor.constraint(equalTo: serverTitleLabel.trailingAnchor, constant: 10),
            refreshServerButton.leadingAnchor.constraint(equalTo: serverLabel.trailingAnchor, constant: 20),
            serverTitleLabel.centerYAnchor.constraint(equalTo: serverLayoutGuide.centerYAnchor),
            serverLabel.centerYAnchor.constraint(equalTo: serverLayoutGuide.centerYAnchor),
            refreshServerButton.centerYAnchor.constraint(equalTo: serverLayoutGuide.centerYAnchor),
            
            localTitleLabel.leadingAnchor.constraint(equalTo: localLayoutGuide.leadingAnchor),
            localLabel.leadingAnchor.constraint(equalTo: localTitleLabel.trailingAnchor, constant: 10),
            refreshLocalButton.leadingAnchor.constraint(equalTo: localLabel.trailingAnchor, constant: 20),
            localTitleLabel.centerYAnchor.constraint(equalTo: localLayoutGuide.centerYAnchor),
            localLabel.centerYAnchor.constraint(equalTo: localLayoutGuide.centerYAnchor),
            refreshLocalButton.centerYAnchor.constraint(equalTo: localLayoutGuide.centerYAnchor),

            
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Subscription Status"
        self.view.backgroundColor = .lightGray
        self.layout()
    }
}
