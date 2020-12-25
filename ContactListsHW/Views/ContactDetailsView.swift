//
//  ContactDetailsView.swift
//  ContactListsHW
//
//  Created by User on 24.12.2020.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Contact
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer()
            }
            RowView(imageName: "phone", contactValue: contact.phoneNumber)
            RowView(imageName: "tray", contactValue: contact.email)
        }
        .navigationBarTitle(contact.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Contact.getRandomContacts().first!)
    }
}
