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
        
    }
    func configureLabel() {
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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // this is ensures the label is centered on the screen
        label.center = view.center
        
    }


}

