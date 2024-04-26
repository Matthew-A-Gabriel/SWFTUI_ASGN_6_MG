//
//  QuizAppEnd.swift
//  Quiz_App
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

struct QuizAppEnd: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("The End")
                Text("Final Score: _ / _")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                NavigationLink(destination: {
                    ContentView()
                }, label: {
                    Text("Restart")
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
    QuizAppEnd()
}
