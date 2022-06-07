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
            HStack {
                Spacer()
                
                Image(systemName: Contacts.contact.rawValue)
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                
                Spacer()
            }
            
            HStack {
                Image(systemName: Contacts.phone.rawValue)
                    .foregroundColor(.blue)
                Text(contact.phoneNumber)
            }
            
            HStack {
                Image(systemName: Contacts.email.rawValue)
                    .foregroundColor(.blue)
                Text(contact.email)
            }
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
