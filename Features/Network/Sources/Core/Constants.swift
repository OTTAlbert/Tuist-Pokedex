//
//  Constants.swift
//  NetworkKit
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
        
        struct BackpackScene {
            static let title = "Рюкзак"
            static let closeButton = "Закрыть"
        }
        
        struct DetailScene {
            static let weight = "Масса"
            static let height = "Высота"
            static let date = "Дата"
            static let experience = "Опыт"
            static let types = "Типы"
        }
        
        struct Error {
            static let jsonDecodingError = "Error: JSON decoding error."
            static let noDataError = "Error: No data received."
            static let noResultsFound = "No results were found for your search."
            static let statusCode404 = "404"
            static let notFound = "Ошибка 401 Покемон не найден"
        }
    }
    
    struct PokemonAPI {
        static let minIdentifier = 1
        static let maxIdentifier = 1000
    }
}
