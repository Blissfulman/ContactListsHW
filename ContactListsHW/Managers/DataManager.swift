//
//  DataManager.swift
//  ContactListsHW
//
//  Created by User on 04.11.2020.
//  Copyright © 2020 Evgeny. All rights reserved.
//

import Foundation

final class DataManager {
    
    static let shared = DataManager()
    
    let names = ["John", "Aaron", "Tim", "Ted", "Steven", "Ivan",
                 "Bruce", "Allan", "Carl", "Nicola", "Sharon", "Lev"]
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth",
                    "Jankins", "Po", "White", "Williams",
                    "Roberts", "Cook", "Gibson", "Tavares"]
    let phoneNumbers = ["7465543", "7452311", "7342349", "7009322",
                        "9832422", "6723423", "7123121", "7405390",
                        "1273444", "7213991", "7281593", "7334231"]
    let emails = ["john@mail.com", "first@avatar.com", "dom@gmail.com",
                  "home@tb.com", "mymail@ya.com", "mailll@mail.com",
                  "secret@ya.com", "hosdfs@mail.com", "still@swift.com",
                  "adam24@mail.com", "pochta@ya.com", "mewmew@mail.com"]
    
    private init() {}
}
