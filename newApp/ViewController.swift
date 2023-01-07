//
//  ViewController.swift
//  newApp
//
//  Created by Igor Ignatov on 07.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countButton: UIButton!
    
    private var counterPrefix = "Значение счётчика:"
    private var count: Int = 0 {
        didSet {
            countLabel.text = "\(counterPrefix) \(count)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "\(counterPrefix) \(count)"
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
    }
}

