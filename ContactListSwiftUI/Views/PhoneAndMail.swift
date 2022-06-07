//
//  PhoneAndMail.swift
//  ContactListSwiftUI
//
//  Created by Михаил Иванов on 07.06.2022.
//

import SwiftUI

struct PhoneAndMail: View {
    let image: String
    let phoneAndMail: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(phoneAndMail)
        }
    }
}

struct PhoneAndMail_Previews: PreviewProvider {
    static var previews: some View {
        PhoneAndMail(
            image: Contacts.phone.rawValue,
            phoneAndMail: Person.getContactList()[0].phoneNumber)
    }
}
