//
//  ApiRestServices.swift
//  ApiRestClient
//
//  Created by Daniel Ferrer on 05/09/2020.
//  Copyright © 2020 3pies. All rights reserved.
//

import Alamofire

class ApiRestServices {
    
    private var urlServer: String
    private var manager: Session
    
    init(urlServer: String) {
        self.urlServer = urlServer
        
        let configuration: URLSessionConfiguration = {
            let config = URLSessionConfiguration.default
            
            return config
        }()
        
        self.manager = Session(configuration: configuration)
    }
    
    internal func request<T:Codable>(urlService: String, completionHandler: @escaping(T?) -> Void) {
        manager.request("\(self.urlServer)\(urlService)").validate().responseDecodable(of: T.self) { response in
            guard let data = response.value else { return }
            completionHandler(data)
        }
    }
    
}

