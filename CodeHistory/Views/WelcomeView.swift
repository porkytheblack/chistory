//
//  WelcomeView.swift
//  CodeHistory
//
//  Created by Donald Onyino on 24/06/2023.
//

import SwiftUI

struct WelcomeView: View {
    let accentColor = GameColor.accent
    let mainColor = GameColor.main
    var body: some View {
        NavigationView{
            ZStack{
                mainColor.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Select the correct answers to the following questions")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay let's go!")
                        }
                    )
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
