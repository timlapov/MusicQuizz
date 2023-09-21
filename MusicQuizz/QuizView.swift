//
//  QuizView.swift
//  Question
//
//  Created by apprenant58 on 19/09/2023.
//

import SwiftUI

struct QuizView: View {
    let question: Question
    @State private var selectedAnswerIndex: Int? = nil
    @State private var isCorrectAnswerShown = false
    @Binding var currentQuestionIndex: Int
    @Binding var totalScore: Int
    @State var textApresReponse = ""

    var layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack {
            Image(question.image)
                .resizable()
                .frame(width: 300, height: 300)
            Text(question.questionText)
                .frame(height: 150)
                .font(.title)
                .padding()
                .lineSpacing(5)

            LazyVGrid(columns: layout, spacing: 45){
                ForEach(0..<question.options.count, id: \.self) { index in
                    Button(action: {
                        selectedAnswerIndex = index
                        checkAnswer()
                    }) {
                        Text(question.options[index])
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder(.purple, lineWidth: 2)
                                    .frame(width: 170, height: 80)

                            )
                            .foregroundColor(.white)
                    }
                    .disabled(isCorrectAnswerShown)
                }
            }


            Spacer ()
            Button("Suivant")
            {
                currentQuestionIndex += 1
                selectedAnswerIndex = nil
                isCorrectAnswerShown = false
                textApresReponse = ""
            }

            Text(textApresReponse)
                .foregroundColor(.red)
        }
    }

    func checkAnswer() {
        if selectedAnswerIndex == question.correctAnswerIndex {
            isCorrectAnswerShown = true
            textApresReponse = "La réponse correcte est : \(question.options[question.correctAnswerIndex])"
            totalScore += 1

        }
        else if selectedAnswerIndex != question.correctAnswerIndex{
            isCorrectAnswerShown = false
            textApresReponse = "La Bonne réponse était :\(question.options[question.correctAnswerIndex])"
        }
    }


}



struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(question: Question(questionText: "Qui a enregistré l'album Thriller en 1982 ?",
                                    options: ["Prince", "Michael Jackson", "Lionel Richie", "Stevie Wonder"],
                                    correctAnswerIndex: 1, image: "thriller"), currentQuestionIndex:.constant(3), totalScore: .constant(0))
    }
}
