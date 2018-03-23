//
//  UITestingExampleTests.swift
//  UITestingExampleTests
//
//  Created by Jan Scheithauer on 22.03.18.
//

import XCTest
import FBSnapshotTestCase

@testable import UITestingExample

class SnapshotTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()

        self.recordMode = false //This creates the reference images on disk, remove the line enabling record mode and run the test
        self.isDeviceAgnostic = true //To allow appending the device model (iPhone, iPad, iPod Touch, etc), OS version and screen size to the images (allowing to have multiple tests for the same «snapshot» for different OSs and devices)
    }
    
    func testViewControllerWithStoryboard() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        FBSnapshotVerifyView(sut.view)
    }

    func testViewControllerWithoutStoryboard() {
        let vc = ViewControllerWithoutStoryboard()
        FBSnapshotVerifyView(vc.view)
    }

    
}
