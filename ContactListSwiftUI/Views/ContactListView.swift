//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Михаил Иванов on 06.06.2022.
//

import SwiftUI

struct ContactListView: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList, id: \.self) { contact in
                NavigationLink(destination: ContactInfoView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contactList: Person.getContactList())
    }
}
