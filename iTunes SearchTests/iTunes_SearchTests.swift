//
//  iTunes_SearchTests.swift
//  iTunes SearchTests
//
//  Created by Iyin Raphael on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import iTunes_Search

class iTunes_SearchTests: XCTestCase {

   // Test if the search result controller gets valid data back.
    
    func testValidData() {
        
        // The input for the SearchResultController
        let mockDataLoader = MockDataLoader(data: garagebandJSON, error: nil)
        
        let searchResultController = SearchResultController(dataLoader: mockDataLoader)
        
        
        //What is the output we expect and how can we validate it?
        
    }

}
