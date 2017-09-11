//
//  GithubWebService.swift
//  Swifty
//
//  Created by Siddharth Gupta on 09/09/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import Swifty

class HTTPBin: WebService {
    
    static var serverURL = "https://httpbin.org"
    static var networkInterface: WebServiceNetworkInterface = NetworkManager.shared
   
// MARK: Network Requests
    
    static func getMyIP() -> NetworkResource {
        return server.get("ip")
                     .tag("ipRequest") /// Tagged so that the IP constraint doesn't block its's own request
    }
    
    static func postRequest(with jsonBody: [String: Any]) -> NetworkResource {
        return server.post("post")
                     .json(body: jsonBody)
                     .canHaveConstraints(true)
    }
    
}
