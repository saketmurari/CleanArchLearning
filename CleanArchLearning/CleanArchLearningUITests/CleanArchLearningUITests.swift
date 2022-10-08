//
//  CleanArchLearningUITests.swift
//  CleanArchLearningUITests
//
//  Created by saket.kumar on 03/10/22.
//

import XCTest

class CleanArchLearningUITests: XCTestCase {

    override func setUpWithError() throws {
        
        try super.setUpWithError()
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
        
    }


    func testExample() throws {
        
        let app = XCUIApplication()
        let goStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Go"]/*[[".buttons[\"Go\"].staticTexts[\"Go\"]",".staticTexts[\"Go\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(goStaticText.exists)
        goStaticText.tap()
        let backStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Back"]/*[[".buttons[\"Back\"].staticTexts[\"Back\"]",".staticTexts[\"Back\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(backStaticText.exists)
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
