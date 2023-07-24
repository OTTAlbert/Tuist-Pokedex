//
//  Constants.swift
//  Common
//
//  Created by Ronan on 09/05/2019.
//  Copyright © 2019 Sonomos. All rights reserved.
//

import Foundation

// swiftlint:disable nesting identifier_name

public struct Constants {
    
    public struct Network {
        public static let baseUrlPath = "https://pokeapi.co/api/v2/"
        public static let searchPath = "pokemon"
    }
    
    public struct Image {
        public static let pokemonPlaceholder = "PokemonPlaceholder"
    }
    
    public struct Translations {
        public static let loading = "Loading"
        public static let ok = "OK"
        public static let cancel = "Cancel"
        
        public struct HomeScene {
            public static let catchTitle = "Поймать покемона"
        }
        
        public struct CatchScene {
            public static let weight = "Масса"
            public static let height = "Высота"
            public static let leaveOrCatchAlertMessageTitle = "Вы хотите отпустить или поймать?"
            public static let leaveItButtonTitle = "Отпустить"
            public static let catchItButtonTitle = "Поймать!"
            public static let alreadyHaveItAlertMessageTitle = "У вас уже есть такой покемон, вам придется отпустить его..."
            
            public static let noPokemonFoundAlertTitle = "Покемон убежал( вы можете попробовать снова."
        }
        
        public struct BackpackScene {
            public static let title = "Рюкзак"
            public static let closeButton = "Закрыть"
        }
        
        public struct DetailScene {
            public static let weight = "Масса"
            public static let height = "Высота"
            public static let date = "Дата"
            public static let experience = "Опыт"
            public static let types = "Типы"
        }
        
        public struct Error {
            public static let jsonDecodingError = "Error: JSON decoding error."
            public static let noDataError = "Error: No data received."
            public static let noResultsFound = "No results were found for your search."
            public static let statusCode404 = "404"
            public static let notFound = "Ошибка 401 Покемон не найден"
            public static let asyncError = "Async Search failed"
        }
    }
    
    public struct PokemonAPI {
        public static let minIdentifier = 1
        public static let maxIdentifier = 1000
    }
}
