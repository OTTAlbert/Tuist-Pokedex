//
//  Constants.swift
//  NetworkKitExample
//
//  Created by Ronan on 09/05/2019.
//  Copyright © 2019 Sonomos. All rights reserved.
//

import Foundation

// swiftlint:disable nesting identifier_name

struct Constants {
    
    struct Network {
        static let baseUrlPath = "https://pokeapi.co/api/v2/"
        static let searchPath = "pokemon"
    }
    
    struct Image {
        static let pokemonPlaceholder = "PokemonPlaceholder"
    }
    
    struct Translations {
        static let loading = "Loading"
        static let ok = "OK"
        static let cancel = "Cancel"
        
        struct HomeScene {
            static let catchTitle = "Поймать покемона"
        }
        
        struct CatchScene {
            static let weight = "Масса"
            static let height = "Высота"
            static let leaveOrCatchAlertMessageTitle = "Вы хотите отпустить или поймать?"
            static let leaveItButtonTitle = "Отпустить"
            static let catchItButtonTitle = "Поймать!"
            static let alreadyHaveItAlertMessageTitle = "У вас уже есть такой покемон, вам придется отпустить его..."
            
            static let noPokemonFoundAlertTitle = "Покемон убежал( вы можете попробовать снова."
            
        }
        
        struct SimpleView {
            
            static let title = "NetworkKit Example"
            static let labelText = "Choose a Pokemon"
            
            static let placeholder = "A number between 1 and 1000"
            
            struct Button {
                static let search = "Search"
            }
            
            struct Alert {
                
                static let found = "Pokemon found: "
                
                struct Error {
                    static let enterVlidNumber = "Enter valid number"
                    static let outOfRange = "Number out of range"
                    static let nameNotFound = "Unknown"
                }
                
            }
        }
        
        struct Error {
            static let jsonDecodingError = "Error: JSON decoding error."
            static let noDataError = "Error: No data received."
            static let noResultsFound = "No results were found for your search."
            static let statusCode404 = "404 Not found"
        }
    }
    
    struct PokemonAPI {
        static let minIdentifier = 1
        static let maxIdentifier = 1000
    }
}
