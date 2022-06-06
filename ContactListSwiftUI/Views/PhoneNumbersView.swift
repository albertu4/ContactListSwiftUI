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
        List(contactList, id: \.self) { contact in
            Text(contact.fullName)
        }
    }
}

struct PhoneNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumbersView(contactList: Person.getContactList())
    }
}
