//
//  EmailRow.swift
//  ContactListsHW
//
//  Created by User on 24.12.2020.
//

import SwiftUI

struct EmailRow: View {
    let email: String
    
    var body: some View {
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            Text(email)
        }
    }
}

struct EmailRow_Previews: PreviewProvider {
    static var previews: some View {
        EmailRow(email: "mail@box.ru")
    }
}
