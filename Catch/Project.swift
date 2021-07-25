import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(name: "Catch",
                          platform: .iOS,
                          packages: [
                            .package(url: "https://github.com/Moya/Moya.git", .exact("14.0.0")),
                            .package(url: "https://github.com/antitypical/Result.git", from: "5.0.0"),
                            .package(url: "https://github.com/JonasGessner/JGProgressHUD", .upToNextMajor(from: "2.0.0"))
                          ],
                          targetDependancies: [
                            .package(product: "JGProgressHUD")],
                          additionalTargets: [LocalFramework(name: "Haneke",
                                                             path: "Haneke",
                                                             frameworkDependancies: [],
                                                             resources: []),
                                              LocalFramework(name: "PokedexCommon",
                                                             path: "Pokedex",
                                                             frameworkDependancies: [],
                                                             resources: ["Targets/PokedexCommon/Sources/**/*.xib"]),
                                              LocalFramework(name: "CatchUI",
                                                             path: "Catch",
                                                             frameworkDependancies: [.target(name: "PokedexCommon")],
                                                             resources: ["Targets/CatchUI/Sources/**/*.storyboard",
                                                                         "Targets/CatchUI/Resources/**"]),
                                              LocalFramework(name: "NetworkKit",
                                                             path: "Network",
                                                             frameworkDependancies: [
                                                                .package(product: "Moya"),
                                                                .package(product: "Result")
                                                             ], resources: ["Targets/NetworkKit/Resources/**"])
                          ])
