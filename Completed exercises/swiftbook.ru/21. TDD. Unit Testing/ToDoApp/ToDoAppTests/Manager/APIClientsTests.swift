//
//  APIClientsTests.swift
//  ToDoAppTests
//
//  Created by Rinat Abidullin on 01.03.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest
@testable import ToDoApp

class APIClientsTests: XCTestCase {
    
    var urlComponents: URLComponents!

    override func setUp() {
        let mockURLSession = MockURLSession()
        let sut = APIClient()
        sut.urlSession = mockURLSession
        
        let completionHandler = {(token: String?, error: Error?) in
            
        }
        sut.login(withName: "name", password: "qwerty", completionHandler: completionHandler)
        
        guard let url = mockURLSession.url else {
            XCTFail()
            return
        }
        
        urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoginUsesCorrectHost() {
        XCTAssertEqual(urlComponents?.host, "todoapp.com")
    }
    
    func testLoginUsesCorrectPath() {
        XCTAssertEqual(urlComponents?.path, "/login")
    }
}

extension APIClientsTests {
    
    class MockURLSession: URLSessionProtocol {
        
        var url: URL?
        
        func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
            self.url = url
            return URLSession.shared.dataTask(with: url)
        }
    }
}
