import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

let project = Project.app(name: "Pokedex",
                          platform: .iOS,
                          externalDependencies: [.JGProgressHUD, .Swinject],
                          moduleTargets: [
                            haneke,
                            home,
                            backpack,
                            detail,
                            `catch`,
                            common,
                            network,
                          ])






