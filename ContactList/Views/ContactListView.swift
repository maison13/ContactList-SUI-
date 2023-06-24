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
        NavigationStack {
            List(persons, id: \.name) { person in
                NavigationLink(destination: PersonInfoView(person: person)) {
                        Text(person.fullName)
                        .font(.title3)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
        
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPerson())
    }
}
