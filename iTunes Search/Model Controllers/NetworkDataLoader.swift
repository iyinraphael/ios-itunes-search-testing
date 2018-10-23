//
//  NetworkDataLoader.swift
//  iTunes Search
//
//  Created by Iyin Raphael on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    
    func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    
    //We want loadData to be functional whether with remote data in this case, or with local data (not related to URLSession)
    
    // FUntionally, this is the same as URLSession.shared.dataTask(with...)
    func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }.resume()
    }
}
