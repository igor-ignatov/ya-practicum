//
//  ViewController.swift
//  newApp
//
//  Created by Igor Ignatov on 07.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var container: UIView!
    @IBOutlet weak var skyImageView: UIImageView!
    @IBOutlet weak var Button: UIButton!
    
    private var isSun: Bool = false
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonDidTapDown(_ sender: Any) {
        print("> buttonDidTapDown")
        
        skyImageView.tintColor = .blue
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        if isSun {
            skyImageView.image = UIImage(systemName: "sun.max")
            skyImageView.tintColor = .orange
            container.backgroundColor = .white
            Button.tintColor = .black

        } else {
            skyImageView.image = UIImage(systemName: "moon")
            skyImageView.tintColor = .yellow
            container.backgroundColor = .black
            Button.tintColor = .white
        }
        
        isSun.toggle()
    }
}

