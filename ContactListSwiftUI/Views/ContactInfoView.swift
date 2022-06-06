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
        VStack{
            
        }
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Person.getContactList()[1])
    }
}
