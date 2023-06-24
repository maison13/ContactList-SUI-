//
//  ContentView.swift
//  ContactList
//
//  Created by Just Vovo on 24.06.2023.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPerson()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            FullContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
