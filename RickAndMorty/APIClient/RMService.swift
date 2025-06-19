//
//  RMService.swift
//  RickAndMorty
//
//  Created by Lokeswar Mamallan on 15/06/25.
//

import Foundation


final class RMService{
    static let shared = RMService()
    
    private init() {}
    
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
