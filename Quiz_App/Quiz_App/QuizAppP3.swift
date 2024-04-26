//
//  QuizAppP3.swift
//  Quiz_App
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

struct QuizAppP3: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Question 3")                
                Text("Score: _")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                NavigationLink(destination: {
                    QuizAppEnd()
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
    QuizAppP3()
}
