//
//  ContactListView.swift
//  ContactList
//
//  Created by Just Vovo on 24.06.2023.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
   
    var body: some View {
            List(persons, id: \.name) { person in
                NavigationLink(destination: PersonInfoView(person: person)) {
                        Text(person.fullName)
                        .font(.system(size: 17))
                }
            }
            .listStyle(.plain)
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPerson())
    }
}
