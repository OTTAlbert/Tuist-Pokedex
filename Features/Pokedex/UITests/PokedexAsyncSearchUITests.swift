//
//  PokedexAsyncSearchUITests.swift
//  PokedexUITests
//
//  Created by ronan.ociosoig on 05/01/2022.
//  Copyright © 2022 Sonomos.com. All rights reserved.
//

import XCTest

class PokedexAsyncSearchUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launchArguments += ["UITesting", "AsyncTesting"]
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
