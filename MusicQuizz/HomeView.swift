//
//  HomeView.swift
//  MusicQuizz
//
//  Created by Artem Lapov on 18/09/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {

        ZStack {

            Color.gray
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Text("Bienvenu Pseudo")
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                    Button {
                        print("I was tapped")
                    } label: {
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                }

                Text("Nouveauté dans le catalogue")
                    .font(.title3)
                    .foregroundColor(.white)

                Image("QuizzHome")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 200)
                    .padding()

                Text("Nos jeus classiques")
                    .font(.title3)
                    .foregroundColor(.white)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<10) { index in
                            Image("QuizzHome")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
