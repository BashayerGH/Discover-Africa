//
//  CodableBundleExtens.swift
//  Africa
//
//  Created by Bashayr on 02/11/1442 AH.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        // 3. Create ea decoder
        let decoder =  JSONDecoder()

        // 4. Create ea property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decoded \(file) from bundle")
        }
        // 5. Return the ready-to-use data
        return loaded
    }
}
