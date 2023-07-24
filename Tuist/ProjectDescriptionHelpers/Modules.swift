//
//  Modules.swift
//  ProjectDescriptionHelpers
//
//  Created by albert.arifullin on 22.07.2023.
//

import Foundation

// для работы с изображениями из сети
public let haneke = Module(name: .Haneke,
                           path: "Haneke",
                           exampleResources: ["Resources/**"])

// главный экран
public let home = Module(name: .HomeUI,
                         path: "Home",
                         frameworkDependancies: [.target(.Common)],
                         exampleDependencies: [.external(.JGProgressHUD)],
                         frameworkResources: ["Sources/**/*.storyboard", "Resources/**"],
                         exampleResources: ["Resources/**"])

// экран рюкзака
public let backpack = Module(name: .BackpackUI,
                             path: "Backpack",
                             frameworkDependancies: [.target(.Common), .target(.Haneke)],
                             exampleDependencies: [.target(.Detail)],
                             frameworkResources: ["Resources/**", "Sources/**/*.xib", "Sources/**/*.storyboard"],
                             exampleResources: ["Resources/**", "Sources/**/*.storyboard"])

// экран деталей по покемону
public let detail = Module(name: .Detail,
                           path: "Detail",
                           frameworkDependancies: [.target(.Common), .target(.Haneke)],
                           frameworkResources: ["Sources/**/*.storyboard"],
                           exampleResources: ["Resources/**"])

// экран поимки


public let `catch` = Module(name: .CatchUI,
                            path: "Catch",
                            frameworkDependancies: [.target(.Common), .target(.Haneke)],
                            exampleDependencies: [.external(.JGProgressHUD), .target(.NetworkKit)],
                            frameworkResources: ["Resources/**", "Sources/**/*.storyboard"],
                            exampleResources: ["Resources/**", "Sources/**/*.storyboard"])

// общая логика (работа с сохраненными данными / общие UI-компоненты / протоколы)
public let common = Module(name: .Common,
                           path: "Common",
                           frameworkResources: ["Sources/**/*.xib"],
                           exampleResources: ["Resources/**"],
                           targets: [.framework, .unitTests])

// получение данных покемона из сети
public let network = Module(name: .NetworkKit,
                            path: "Network",
                            exampleDependencies: [.target(.Common)],
                            frameworkResources: ["Resources/**"],
                            exampleResources: ["Resources/**"],
                            testResources: ["**/*.json"])
