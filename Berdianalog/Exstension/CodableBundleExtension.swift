//
//  CodableBundleExtension.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 14/06/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. tempat JSON FILE
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. property untuk data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 3. decoder
        let decoder = JSONDecoder()
        
        // 4. property untuk data
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 5. return
        return decodeData
    }
}
