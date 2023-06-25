//
//  PersonRowView.swift
//  ContactList
//
//  Created by Just Vovo on 24.06.2023.
//

import SwiftUI

struct PersonInfoRowView: View {
    let image: String
    let personInfo: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(personInfo)
                .font(.system(size: 17))
                .padding(.leading, 7)
            Spacer()
        }
    }
}

struct PersonInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person(name: "Ethan", surName: "Howk", phoneNumber: "899904746", email: "test@mail.ru"))
    }
}
