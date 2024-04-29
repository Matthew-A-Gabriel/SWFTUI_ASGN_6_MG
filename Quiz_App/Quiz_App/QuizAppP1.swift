//
//  QuizAppP1.swift
//  Quiz_App
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

struct QuizAppP1: View {
    @Binding var questions: [Question]
    @State var leQuestions: String = "question [here]"
    @State var leAnswers: [String] = ["a","b","c"]
    @State var leCorrect: String = "d"
    @State private var questionCounter: Int = 1
    var body: some View {
        NavigationStack{
            VStack{
                Text("Question \(questionCounter)")
                Text("Score: _")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                
                Text("\(leQuestions)")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding()
                    .background(.black)
                    .border(Color.gray)
                    .cornerRadius(10)
                Text("\(leAnswers[0])")
                Text("\(leAnswers[1])")
                Text("\(leAnswers[2])")
                Text("\(leCorrect)")
                
                
                
                
                
                
                NavigationLink(destination: {
                    QuizAppP2()
                }, label: {
                    Text("Next")
                        .frame(width:100, height: 50)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .padding(.horizontal, 120)
                        .background(.blue)
                        .cornerRadius(20)
                        .font(.system(size: 30))
                })
            }
        }
    }
}

#Preview {
    QuizAppP1(questions: .constant([]))
}
