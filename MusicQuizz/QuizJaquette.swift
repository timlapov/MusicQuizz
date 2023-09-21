//
//  QuiizJaquette.swift
//  Profil
//
//  Created by apprenant71 on 19/09/2023.
//


import Foundation
import SwiftUI

struct QuizJaquette: View {
    
    @Binding var unePersonne: User
    
    var body: some View {
        
            
                VStack {
                    Text(unePersonne.name)
                    
                    Text("\(unePersonne.points) Points")
                }
                .font(.largeTitle)
                .bold()

                .navigationTitle("Scores")
            
        }
        
    }


struct QuizJaquette_Previews: PreviewProvider {
    static var previews: some View {
        QuizJaquette(unePersonne: .constant(User(name: "Mon test est très long", points: 154, avatar: "key")))
    }
}

