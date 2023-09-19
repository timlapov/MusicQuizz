//
//  ContentView.swift
//  MusicQuizz
//
//  Created by Artem Lapov on 18/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil")
                }

            Text("Messagerie")
                .tabItem {
                    Image(systemName: "ellipsis.message")
                    Text("Messagerie")
                }
            
            Text("Profil")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
