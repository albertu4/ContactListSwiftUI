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
        
        List {
            PersonImage(image: Contacts.contact.rawValue)
            
            PhoneAndMail(image: Contacts.phone.rawValue, phoneAndMail: contact.phoneNumber)
            
            PhoneAndMail(image: Contacts.email.rawValue, phoneAndMail: contact.email)
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
