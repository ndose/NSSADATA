//
//  NetworkHandler.swift
//  NasaChallenge
//
//   Created by Hilliman Ncube on 2022/01/31.
//

import Foundation
import Combine

protocol NetworkHandler {
    func fetchData<Result: Codable>(_ type: Result.Type, urlString: String) -> AnyPublisher<Result, NetworkError>
}
