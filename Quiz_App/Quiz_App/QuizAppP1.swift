//
//  QuizAppP1.swift
//  Quiz_App
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

struct QuizAppP1: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Question 1")
                    .fontWeight(.bold)
                    .font(.largeTitle)
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
    QuizAppP1()
}