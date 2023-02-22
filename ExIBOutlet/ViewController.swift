//
//  ViewController.swift
//  ExIBOutlet
//
//  Created by 김종권 on 2023/02/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBAction func buttonAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let vc = storyboard.instantiateViewController(identifier: "SecondVC") { (coder) -> UIViewController? in
                UIViewController(coder: coder)
            }
            
            self.present(vc, animated: true)
            
        }
    }
}
