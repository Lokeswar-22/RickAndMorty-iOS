//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Lokeswar Mamallan on 15/06/25.
//

import Foundation


final class RMRequest {
    //base url
    //end points
    //path compoenents
    //query parameters
    
    private struct Constants{
        static let _baseUrl = "https://rickandmortyapi.com/api"
    }
    private let endpoint: RMEndPoints
    
    private let pathComponents: [String]
    
    private let queryParamaeters: [URLQueryItem]
    
    
    private var urlString: String{
        var string = Constants._baseUrl
        string += "/"
        string += endpoint.rawValue
        
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
             
        }
        
        if !queryParamaeters.isEmpty {
            string += "/?"
            let arguments = queryParamaeters.compactMap({
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += arguments
             
        }
        return string
    }
    
    public var url: URL?{
        return URL(string: urlString)
    }
    
    
    public let httpGetMethod = "GET"
    
    
    init(
        endpoint: RMEndPoints,
        pathComponents: [String] = [],
        queryParamaeters: [URLQueryItem] = [])
    {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParamaeters = queryParamaeters
    }
    
    
    
     
    
    
}
