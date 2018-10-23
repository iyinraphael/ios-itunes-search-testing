//
//  SearchResultControllerTests.swift
//  iTunes SearchTests
//
//  Created by Iyin Raphael on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import iTunes_Search

class SearchResultControllerTests: XCTestCase {

    // Test if the search result controller gets valid data back.
    
    func testValidData() {
        
        let expectation  = self.expectation(description: "Perform search expectation")
        
        // The input for the SearchResultController
        let mockDataLoader = MockDataLoader(data: garagebandJSON, error: nil)
        
        let searchResultController = SearchResultController(dataLoader: mockDataLoader)
        searchResultController.performSearch(for: "GarangeBand", resultType: .software) {
            
            //After
        
            
            
            XCTAssertTrue(searchResultController.searchResults.count == 1)
            
            if let searchResult = searchResultController.searchResults.first {
                XCTAssertEqual(searchResult.title, "GarageBand")
            }
            
            expectation.fulfill() // The test should pass
        }
        
        
        //What is the output we expect and how can we validate it?
        
        
        //Normally the test would finish (and succeeds)
        //wait here until the espection is fulfilled or
        
        waitForExpectations(timeout: 5, handler: nil)
    
        
    }
    
    

}
