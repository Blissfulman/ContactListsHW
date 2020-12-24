//
//  PhoneRow.swift
//  ContactListsHW
//
//  Created by User on 24.12.2020.
//

import SwiftUI

struct PhoneRow: View {
    let phoneNumber: String
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text(phoneNumber)
        }
    }
}

struct PhoneRow_Previews: PreviewProvider {
    static var previews: some View {
        PhoneRow(phoneNumber: "12345")
    }
}
