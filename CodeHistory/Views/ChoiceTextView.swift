//
//  ChoiceTextView.swift
//  CodeHistory
//
//  Created by Donald Onyino on 23/06/2023.
//

import SwiftUI

struct ChoiceTextView: View {
    var choiceText: String
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
