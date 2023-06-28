//
//  ScoreView.swift
//  CodeHistory
//
//  Created by Donald Onyino on 28/06/2023.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                VStack(alignment: .center){
                    Text("Final Score:")
                        .font(.body)
                    Text("\(viewModel.percentage)%")
                        .font(.system(size: 50))
                        .bold()
                        .padding()
                }
                Spacer()
                VStack(alignment: .center){
                    Text("\(viewModel.correctGuesses)  ✅")
                        .font(.body)
                    Text("\(viewModel.incorrectGuesses)❌")
                        .font(.body)
                        .padding()
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(), label: {
                    BottomTextView(str: "Retake Quiz")
                })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 10))
    }
}
