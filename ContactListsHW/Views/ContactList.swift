//
//  ContactList.swift
//  ContactListsHW
//
//  Created by User on 24.12.2020.
//

import SwiftUI

struct ContactList: View {
    let contactList: [Contact]
    
    var body: some View {
        NavigationView {
            List(contactList, id: \.self) { contact in
                NavigationLink("\(contact.fullName)", destination: ContactDetailsView(contact: contact))
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contactList: Contact.getRandomContacts())
    }
}
