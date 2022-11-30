//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Михаил Иванов on 06.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contactList: contactList)
                .tabItem {
                    Image(systemName: Contacts.contacts.rawValue)
                    Text("Contacts")
                }
            
            PhoneNumbersView(contactList: contactList)
                .tabItem {
                    Image(systemName: Contacts.phone.rawValue)
                    Text("Phones")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
