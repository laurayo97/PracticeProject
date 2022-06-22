//
//  ApiManager.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 5/9/22.
//

import Foundation
import SwiftSDK

final class ApiManager {
    private let SERVER_URL = "https://api.backendless.com"
    let apiKey = "48E198B6-F03E-4FBA-BAE1-D0CCA9302C86"
    let appId = "E13A6313-CD85-0825-FF32-45320FBA2C00"

    private init() {
        Backendless.shared.hostUrl = SERVER_URL
        Backendless.shared.initApp(applicationId: appId, apiKey: apiKey)
    }
}
