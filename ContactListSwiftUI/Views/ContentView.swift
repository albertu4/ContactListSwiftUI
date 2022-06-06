//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Михаил Иванов on 06.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var contactList = Person.getContactList()
    
    var body: some View {
        NavigationView {
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
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
