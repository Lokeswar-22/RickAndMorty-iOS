//
//  RMCharectorViewController.swift
//  RickAndMorty
//
//  Created by Lokeswar Mamallan on 15/06/25.
//

import UIKit

final class RMCharectorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Character"
        
        let request = RMRequest(
            endpoint: .character,
            queryParamaeters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
        
        
        RMService.shared.execute(request,
                                 expecting: RMCharector.self) {result in
            }
        
        
        

    }
    



}
