//
//  ViewController.swift
//  basic Animations
//
//  Created by Nicolas Rios on 11/14/19.
//  Copyright © 2019 Nicolas Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    var label : UILabel!
    
    //MARK: - View Life Cycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLabel()
        configureButtons()
        
    }
    private func configureLabel() {
        label = UILabel(frame:CGRect(x: 0, y: 0, width: 200, height: 200))
        label.widthAnchor.constraint(equalTo: label.heightAnchor).isActive = false
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 12
        
        label.text = "🛹"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize:96)
        
        
        
    }
    
    
    private func configureButtons() {
        let rotateButton = UIButton(type: .system)
        rotateButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rotateButton)
        rotateButton.setTitle("Rotate", for: .normal)
        rotateButton.addTarget(self, action: #selector(rotateButtonTapped), for:.touchUpInside)
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(rotateButton)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
        
        
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // this is ensures the label is centered on the screen
        label.center = view.center
        
    }
    // MARK: - Actions
    
    @objc func rotateButtonTapped(sender:UIButton) {
        label.center = view.center
        UIView.animate(withDuration: 2.0) {
            self.label.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4)
            
            
            
            
        }
    }
}


