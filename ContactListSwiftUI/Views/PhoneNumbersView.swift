//
//  PhoneNumbersView.swift
//  ContactListSwiftUI
//
//  Created by Михаил Иванов on 06.06.2022.
//

import SwiftUI

struct PhoneNumbersView: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contactList, id: \.self) { contact in
                    Section(contact.fullName) {
                        
                        Label(contact.phoneNumber, systemImage: Contacts.phone.rawValue)
                        Label(contact.email, systemImage: Contacts.email.rawValue)
                    }
                    .textCase(.none)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct PhoneNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumbersView(contactList: Person.getContactList())
    }
}
