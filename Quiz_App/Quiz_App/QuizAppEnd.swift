//
//  QuizAppEnd.swift
//  Quiz_App
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

struct QuizAppEnd: View {
//    Takes score and puts it in this variable
    var finScore: Int
//    Body, Nav, ZStack
    var body: some View {
        NavigationView{
            ZStack{
//                From "Mound of the bound creator"
                Image("yugiohBG3")
                    .resizable()
                    .frame(width: 450, height: 880)
//                VStack, the final Score is shown out of ten and the Restart button takes you back to the beginning if you want to try again, they share the common color scheme of black and yellow
                VStack{
                    Text("Final Score: \(finScore) / 10")
                        .frame(width: 300, height: 100)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .background(.black)
                        .foregroundColor(.yellow)
                        .cornerRadius(20)
                        .padding()
                    NavigationLink(destination: {
                        ContentView()
                    }, label: {
                        Text("Restart")
                            .frame(width:100, height: 50)
                            .foregroundColor(.yellow)
                            .padding(.vertical)
                            .padding(.horizontal, 120)
                            .background(.black)
                            .border(Color.gray)
                            .cornerRadius(20)
                            .font(.system(size: 30))
                    })
                }
            }
        }
    }
}

#Preview {
    QuizAppEnd(finScore: 0)
}
