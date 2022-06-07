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
        List {
            ForEach(contactList, id: \.self) { contact in
                Section(contact.fullName) {
                    
                    PhoneAndMail(image: Contacts.phone.rawValue, phoneAndMail: contact.phoneNumber)
                    
                    PhoneAndMail(image: Contacts.email.rawValue, phoneAndMail: contact.email)
                }
            }
        }
    }
}

struct PhoneNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumbersView(contactList: Person.getContactList())
    }
}
