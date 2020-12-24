//
//  Contact.swift
//  ContactListsHW
//
//  Created by User on 04.11.2020.
//  Copyright © 2020 Evgeny. All rights reserved.
//

import Foundation

struct Contact: Hashable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Contact {
    static func getRandomContacts() -> [Contact] {
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        var contacts = [Contact]()
        
        let iterationCount = min(names.count,
                                 surnames.count,
                                 phoneNumbers.count,
                                 emails.count)
        
        for index in 0..<iterationCount {
            contacts.append(Contact(name: names[index],
                                    surname: surnames[index],
                                    phoneNumber: phoneNumbers[index],
                                    email: emails[index]))
        }
        return contacts
    }
}
