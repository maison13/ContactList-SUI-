//
//  PersonInfoView.swift
//  ContactList
//
//  Created by Just Vovo on 24.06.2023.
//

import SwiftUI

struct PersonInfoView: View {
    let person: Person
    
    var body: some View {
        NavigationStack {
            List {
                PersonImageView(image: Contacts.person.rawValue)
                PersonInfoRowView(image: Contacts.phone.rawValue, personInfo: person.phoneNumber)
                PersonInfoRowView(image: Contacts.email.rawValue, personInfo: person.email)
            }
            .navigationTitle(person.fullName)
        }
    }
}

struct PersonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person(name: "Ethan", surName: "Howk", phoneNumber: "899904746", email: "test@mail.ru"))
    }
}
