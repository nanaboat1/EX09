//
//  SearchFieldTest.swift
//  Corona TrackerUITests
//
//  Created by Nana Boateng Amoah on 12/13/20.
//  Copyright © 2020 Samabox. All rights reserved.
//

import XCTest

class SearchFieldTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = true;

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testfirstoptionsbutton() throws {
        
        let element = XCUIApplication().windows.children(matching: .other).element
        element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).buttons["More"].tap()
       
    }
    
    func testsecondoptionsbutton() throws {
        
        let app = XCUIApplication()
        app.tables.children(matching: .cell).element(boundBy: 1).buttons["More"].tap()
        
    }
    
    func testthirdoptionsbutton() throws {
        
        let app = XCUIApplication()
        app.staticTexts["Worldwide"].swipeUp()
        app.tables.cells.containing(.staticText, identifier:"DAILY NEW CASES").buttons["More"].tap()
        app.windows.children(matching: .other).element.tap()
        
    }
    
    func testfourthoptionsbutton() {
    
        XCUIApplication().staticTexts["Worldwide"].swipeUp()
        XCUIApplication().tables.cells.containing(.staticText, identifier:"GROWTH OF CASES").buttons["More"].tap()
    
    }
    
    func testfifthoptionsButton() {
        
        let app = XCUIApplication()
        let element = app.windows.children(matching: .other).element
        element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).swipeUp()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["GROWTH OF CASES"].swipeUp()/*[[".cells.staticTexts[\"GROWTH OF CASES\"]",".swipeUp()",".swipeLeft()",".staticTexts[\"GROWTH OF CASES\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,1]]@END_MENU_TOKEN@*/
        tablesQuery.cells.containing(.staticText, identifier:"MOST AFFECTED COUNTRIES").buttons["More"].tap()
        element.tap()
       
    }
    
    func testworldwidePage() throws {
        
        
        let app = XCUIApplication()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["CONFIRMED"]/*[[".cells.staticTexts[\"CONFIRMED\"]",".staticTexts[\"CONFIRMED\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery.children(matching: .cell).element(boundBy: 1).tap()
        app.buttons["Close"].tap()
     
    }
    
    func testDailyNewCasesPage() {
        
        
        let app = XCUIApplication()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1)/*@START_MENU_TOKEN@*/.swipeUp()/*[[".swipeUp()",".swipeLeft()"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        app.tables/*@START_MENU_TOKEN@*/.cells.staticTexts["DAILY NEW CASES"]/*[[".cells.staticTexts[\"DAILY NEW CASES\"]",".staticTexts[\"DAILY NEW CASES\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Close"].tap()
        
    }
    
    
    
    func testGrowthOFCasesPage() {
        
        
        let app = XCUIApplication()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).swipeUp()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["GROWTH OF CASES"]/*[[".cells.staticTexts[\"GROWTH OF CASES\"]",".staticTexts[\"GROWTH OF CASES\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Close"].tap()
                
    }
    
    
    func testmostAffectedCountryPage() throws {
        
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["CONFIRMED"]/*[[".cells.staticTexts[\"CONFIRMED\"]",".staticTexts[\"CONFIRMED\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.cells.staticTexts["GROWTH OF CASES"]/*[[".cells.staticTexts[\"GROWTH OF CASES\"]",".staticTexts[\"GROWTH OF CASES\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.cells.staticTexts["MOST AFFECTED COUNTRIES"]/*[[".cells.staticTexts[\"MOST AFFECTED COUNTRIES\"]",".staticTexts[\"MOST AFFECTED COUNTRIES\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Close"].tap()
        
    }
    
    func testCasessince_hundrt() throws {
        
        
        
        let app = XCUIApplication()
        app.staticTexts["Worldwide"].swipeDown()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["CONFIRMED"]/*[[".cells.staticTexts[\"CONFIRMED\"]",".staticTexts[\"CONFIRMED\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.cells.staticTexts["GROWTH OF CASES"]/*[[".cells.staticTexts[\"GROWTH OF CASES\"]",".staticTexts[\"GROWTH OF CASES\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.swipeUp()
                
    }
    
    
    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
 

}
