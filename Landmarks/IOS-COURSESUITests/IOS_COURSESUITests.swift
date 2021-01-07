//
//  IOS_COURSESUITests.swift
//  IOS-COURSESUITests
//
//  Created by Quentin Thomas on 06/01/2021.
//  Copyright © 2021 Apple. All rights reserved.
//

import XCTest

class IOS_COURSESUITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func launchApp()  {
        let app = XCUIApplication()
        app.launch()
        let textField = app.textFields.element
        let connectiontextLabel = app.staticTexts.element
        XCTAssert(textField.exists)
        XCTAssert(connectiontextLabel.exists)
    }
    func testTextFieldPlaceHolder()  {
        let app = XCUIApplication()
        app.launch()
        let textField = app.textFields.element
        XCTAssert(textField.exists)
        XCTAssertEqual(textField.placeholderValue!, "login")
    }
    
    func testTextFieldInput()  {
        let app = XCUIApplication()
        app.launch()
        let textField = app.textFields.element
        XCTAssert(textField.exists)
        
        textField.tap()
        textField.typeText("value")
     
        XCTAssertEqual(textField.value as! String, "value")
    }
    
    func testTextFieldPassword()  {
        let app = XCUIApplication()
        app.launch()
        let textField = app.secureTextFields.element
        XCTAssert(textField.exists)
    }
    
    func testTextFieldPasswordPlaceHolder()  {
        let app = XCUIApplication()
        app.launch()
        let textField = app.secureTextFields.element
        XCTAssert(textField.exists)
        XCTAssertEqual(textField.placeholderValue!, "password")
    }
    
    func testTextFieldPasswordValue()  {
        let app = XCUIApplication()
        app.launch()
        let textField = app.secureTextFields.element
        textField.tap()
        textField.typeText("secure")
        
        XCTAssertNotEqual(textField.value as! String, "secure")
    }
    
    
    
    func switchScreen()  {
        let app = XCUIApplication()
        app.launch()
        let button = app.buttons.element
        button.tap()
    }
}
