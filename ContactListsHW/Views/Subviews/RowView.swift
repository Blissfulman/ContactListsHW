//
//  RowView.swift
//  ContactListsHW
//
//  Created by User on 24.12.2020.
//

import SwiftUI

struct RowView: View {
    let imageName: String
    let contactValue: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(contactValue)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(imageName: "phone", contactValue: "1234567")
    }
}
