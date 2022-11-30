//
//  ContactInfoView.swift
//  ContactListSwiftUI
//
//  Created by Михаил Иванов on 06.06.2022.
//

import SwiftUI

struct ContactInfoView: View {
    let contact: Person
    
    var body: some View {
        
        Form {
            PersonImage(image: Contacts.contact.rawValue)
            
            Label(contact.phoneNumber, systemImage: Contacts.phone.rawValue)
            Label(contact.email, systemImage: Contacts.email.rawValue)
        }
        .listStyle(.grouped)
        .navigationTitle(contact.fullName)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Person.getContactList()[1])
    }
}
