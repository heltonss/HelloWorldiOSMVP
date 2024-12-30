//
//  GreetingPresenter.swift
//  HelloWorldGrettings
//
//  Created by helton souza silveira on 30/12/24.
//

protocol GreetingView: AnyObject {
    func displayGreeting(_ greeting: String)
}

class GreetingPresenter {
    private let model = GreetingModel()
    weak var view: GreetingView?
    
    init(view: GreetingView){
        self.view = view
        self.getGreeting()
    }
    
    func getGreeting(){
        let greeting = model.greeting
        view?.displayGreeting(greeting)
    }
    
    func changeGreeting(message: String){
        view?.displayGreeting(message)
    }
    
    
    
}
