//
//  DetailedContactList.swift
//  ContactListsHW
//
//  Created by User on 24.12.2020.
//

import SwiftUI

struct DetailedContactList: View {
    let contactList: [Contact]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contactList, id: \.self) { contact in
                    Section(header: Text(contact.fullName)) {
                        RowView(imageName: "phone",
                                contactValue: contact.phoneNumber)
                        RowView(imageName: "tray",
                                contactValue: contact.email)
                    }
                }
                .textCase(.none)
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct DetailedContactList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactList(contactList: Contact.getRandomContacts())
    }
}
