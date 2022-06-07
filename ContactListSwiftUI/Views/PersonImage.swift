//
//  PersonImage.swift
//  ContactListSwiftUI
//
//  Created by Михаил Иванов on 07.06.2022.
//

import SwiftUI

struct PersonImage: View {
    let image: String
    
    var body: some View {
        HStack {
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            
            Spacer()
        }
    }
}

struct PersonImage_Previews: PreviewProvider {
    static var previews: some View {
        PersonImage(image: Contacts.contact.rawValue)
    }
}
