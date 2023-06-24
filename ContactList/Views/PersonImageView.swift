//
//  PersonImageView.swift
//  ContactList
//
//  Created by Just Vovo on 24.06.2023.
//

import SwiftUI

struct PersonImageView: View {
    let image: String
    var body: some View {
        VStack {
            Image(systemName: image)
                .resizable()
                .frame(width: 100, height: 100)
                .padding([.top, .bottom], 20)
        }
        .frame(maxWidth: .infinity)
    }
}

struct PersonImageView_Previews: PreviewProvider {
    static var previews: some View {
        PersonImageView(image: Contacts.person.rawValue)
    }
}
