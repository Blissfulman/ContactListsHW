//
//  DetailsBlock.swift
//  ContactListsHW
//
//  Created by User on 24.12.2020.
//

import SwiftUI

struct DetailsBlock: View {
    let contact: Contact
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer()
            }
            PhoneRow(phoneNumber: contact.phoneNumber)
            EmailRow(email: contact.email)
        }
        .frame(height: 230)
        .cornerRadius(10)
    }
}

struct DetailsBlock_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            DetailsBlock(contact: Contact.getRandomContacts().first!)
                .padding()
        }
    }
}
