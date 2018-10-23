//
//  MockDataLoader.swift
//  iTunes SearchTests
//
//  Created by Iyin Raphael on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
@testable import iTunes_Search

class MockDataLoader: NetworkDataLoader {
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    // Instead of using URLSession, it will just retunr th data that we give it instead of performaing a data task to get the data
    
    func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        
        // Simulate an asynchronous network call
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    let data: Data?
    let error: Error?
    
    private(set) var request: URLRequest? = nil
}
