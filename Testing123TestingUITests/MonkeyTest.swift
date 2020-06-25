//
//  MonkeyTest.swift
//  Testing123TestingUITests
//
//  Created by Ian Applebaum on 6/25/20.
//  Copyright © 2020 Ian Applebaum. All rights reserved.
//

import XCTest
import SwiftMonkey
class MonkeyTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
		let application = XCUIApplication()
		application.launchArguments = ["--MonkeyPaws"]
		application.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

 func testMonkey() {
	
	let monkey = Monkey(frame: XCUIApplication().frame)
				//let monkey = Monkey(seed: 123, frame: application.frame)
				// Add actions for the monkey to perform. We just use a
				// default set of actions for this, which is usually enough.
				// Use either one of these but maybe not both.
				// XCTest private actions seem to work better at the moment.
				// before Xcode 10.1, you can use
				// monkey.addDefaultXCTestPrivateActions()
				// after Xcode 10.1 We can only use public API
			monkey.addDefaultUIAutomationActions()

				// UIAutomation actions seem to work only on the simulator.
				//monkey.addDefaultUIAutomationActions()
				// Occasionally, use the regular XCTest functionality
				// to check if an alert is shown, and click a random
				// button on it.
	//			monkey.addXCTestTapAlertAction(interval: 100, application: XCUIApplication())
				// Run the monkey test indefinitely.
			monkey.monkeyAround(forDuration: 100)
	}
	

}
