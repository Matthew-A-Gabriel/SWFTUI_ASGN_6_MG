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
    @State private var isVisable: Bool = false
    @State private var questionCounter: Int = 1
    @State private var savedValue: String = ""
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
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .border(Color.gray)
                    .cornerRadius(10)
                Button("\()"){
                    
                }
                Button("\(leAnswers[1])"){
                    
                }
                Button("\(leAnswers[2])"){
                    
                }
                Button("\(leCorrect)"){
                    
                }
                
                
                Button("Submit"){
                    isVisable.toggle()
                }
                .opacity(questionCounter == 10 ? 0 : 1)
                
                if questionCounter <= 9 {
                    Button("Next Question"){
                        isVisable.toggle()
                        questionCounter += 1
                    }
                    .frame(width:100, height: 50)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .padding(.horizontal, 120)
                    .background(.blue)
                    .cornerRadius(20)
                    .font(.system(size: 30))
                    .opacity(isVisable ? 1 : 0)
                }
                else {
                    NavigationLink(destination: {
                        QuizAppEnd()
                    }, label: {
                        Text("Next")

                    })
                    .opacity(questionCounter == 10 ? 1 : 0)
                }


            }
        }
    }
}

#Preview {
    QuizAppP1(questions: .constant([]))
}
