//
//  QuestionView.swift
//  CodeHistory
//
//  Created by Donald Onyino on 28/06/2023.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
   
    var body: some View {
      VStack {
        Text(question.questionText)
          .font(.largeTitle)
          .bold()
          .multilineTextAlignment(.leading)
          .padding(.horizontal, 5.0)
        Spacer()
        HStack {
          ForEach(0..<question.possibleAnswers.count) { answerIndex in
            Button(action: {
              print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                viewModel.makeGuess(atIndex: answerIndex)
            }) {
              ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    .background(viewModel.color(forOptionIndex: answerIndex))
                    
            }.disabled(viewModel.guessWasMade)
          }
        }
        .padding(.horizontal, 5.0)
          if viewModel.guessWasMade {
              Button(action: {
                  viewModel.displayNextScreen()
              }){
                  BottomTextView(str: "Next")
              }
          }
      }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
