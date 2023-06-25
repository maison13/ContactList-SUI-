//
//  FullContactsView.swift
//  ContactList
//
//  Created by Just Vovo on 24.06.2023.
//

import SwiftUI

struct FullContactsView: View {
    let persons: [Person]
    
    var body: some View {
            List {
                ForEach(persons, id: \.name) { person in
                    Section(header: Text(person.fullName)) {
                        PersonInfoRowView(image: Contacts.phone.rawValue, personInfo: person.phoneNumber)
                        PersonInfoRowView(image: Contacts.email.rawValue, personInfo: person.email)
                    }
                }
            }
            .listStyle(.plain)
    }
}

struct FullContactsView_Previews: PreviewProvider {
    static var previews: some View {
        FullContactsView(persons: Person.getPerson())
    }
}
