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
        ZStack {
            Color(white: 0.90)
                .ignoresSafeArea()
            VStack {
                DetailsBlock(contact: contact)
                Spacer()
            }
            .padding()
            
        }
        .navigationBarTitle(contact.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Contact.getRandomContacts().first!)
    }
}
