//
//  RMCharector.swift
//  RickAndMorty
//
//  Created by Lokeswar Mamallan on 15/06/25.
//

import Foundation
struct RMSingleLocation: Codable {
    let name: String
    let url: String
}
struct RMORigin: Codable {
    let name: String
    let url: String
}

struct RMCharector: Codable {
    let id: Int
    let name: String
    let status: RMCharectorStatus
    let species: String
    let type: String
    let gender: RMCharectorGender
    let origin: RMORigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String

}


enum RMCharectorStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "Unknown"
    
}

enum RMCharectorGender: String, Codable {
    case male = "Male"
    case female = "Female"
    case genderLess = "Genderless"
    case unknown = "Unknown"
}
