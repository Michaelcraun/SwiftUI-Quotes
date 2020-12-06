//
//  Quote.swift
//  Quotes
//
//  Created by Michael Craun on 4/28/20.
//  Copyright © 2020 Craunic Productions. All rights reserved.
//

import SwiftUI

struct Quote: Hashable, Decodable {
    var quote: String
    var name: String
}
