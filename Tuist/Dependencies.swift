import ProjectDescription

let dependencies = Dependencies(
    carthage: [
        .github(path: "JonasGessner/JGProgressHUD", requirement: .upToNext("2.0.0")),
    ], swiftPackageManager: .init([
        .remote(url: "https://github.com/Swinject/Swinject.git", requirement: .exact("2.8.3")),
    ]),
    platforms: [.iOS]
)

