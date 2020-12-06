//
//  Data.swift
//  Quotes
//
//  Created by Michael Craun on 5/6/20.
//  Copyright © 2020 Craunic Productions. All rights reserved.
//

import UIKit
import SwiftUI

let quoteData: [Quote] = load("original")

func load<T: Decodable>(_ fileName: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: "json") else {
        fatalError()
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError()
    }
    
    do {
        let decoder = JSONDecoder()
        let quotes = try decoder.decode(T.self, from: data)
        return quotes
    } catch let error {
        fatalError(error.localizedDescription)
    }
}
