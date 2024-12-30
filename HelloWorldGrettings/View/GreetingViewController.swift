//
//  GreetingViewController.swift
//  HelloWorldGrettings
//
//  Created by helton souza silveira on 30/12/24.
//

import UIKit

class GreetingViewController: UIViewController, GreetingView {
    private var presenter: GreetingPresenter?
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var showGreetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = GreetingPresenter(view: self)
    }
    
    @IBAction func showGreetingButtonTapped(_ sender: UIButton) {
        presenter?.changeGreeting(message: "mudamos as coisas")
    }
    
    func displayGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
    
    
}
