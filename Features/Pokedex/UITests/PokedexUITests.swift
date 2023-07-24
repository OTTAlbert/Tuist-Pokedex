//
//  PokedexUITests.swift
//  PokedexUITests
//
//  Created by Ronan on 09/05/2019.
//  Copyright © 2019 Sonomos. All rights reserved.
//

import XCTest

class PokedexUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launchArguments += ["UITesting"]
        app.launch()
        
        print(XCUIApplication().debugDescription)
    }
    
    func testSearchPokemon() {
        app.buttons["Ball"].tap()
        app.alerts["Вы хотите отпустить или поймать?"].buttons["Поймать!"].tap()
        app.buttons["Catch"].tap()
        app.buttons["Backpack"].tap()
        app.collectionViews.cells.otherElements.containing(.staticText, identifier: "№6 Charmeleon").element.tap()
        app.navigationBars["Charmeleon"].buttons["Рюкзак"].tap()
        
        let closeButton = app.navigationBars["Рюкзак"].buttons["Закрыть"]
        XCTAssertTrue(closeButton.waitForExistence(timeout: 1))
        closeButton.tap()
    }

}
