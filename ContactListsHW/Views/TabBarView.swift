//
//  TabBarView.swift
//  ContactListsHW
//
//  Created by User on 24.12.2020.
//

import SwiftUI

struct TabBarView: View {
    private let contactList = Contact.getRandomContacts()
    
    var body: some View {
        TabView {
            ContactList(contactList: contactList)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            DetailedContactList(contactList: contactList)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
