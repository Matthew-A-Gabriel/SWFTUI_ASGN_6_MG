//
//  ContentView.swift
//  Quiz_App
//
//  Created by StudentAM on 4/23/24.
//

import SwiftUI

//Struct for questions and it's componenets
struct Question{
    var question: String
    var options: [String]
    var correctAns: String
}


struct ContentView: View {
//    Body, Nav View, Z Stack, the usual
    var body: some View {
        NavigationView{
        ZStack{
//            Background is Door of Destiny from YuGiOh Zexal
            Image("yugiohBG1")
                .resizable()
                .frame(width: 450, height: 880)
//            VStack is obvious
                VStack{
//                    YuGiOG Quiz, but it's with a black background and the text is yellow
                    Text("Yu-Gi-Oh Quiz")
                        .frame(width: 300, height: 100)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .background(.black)
                        .foregroundColor(.yellow)
                        .cornerRadius(20)
                        .padding()
//                    Moving on to the next page, the Quiz part, looks the same as the title
                    NavigationLink( "START", destination: {
                        QuizAppP1()
                    })
                    .frame(width:100, height: 50)
                    .foregroundColor(.yellow)
                    .padding(.vertical)
                    .padding(.horizontal, 120)
                    .background(.black)
                    .cornerRadius(20)
                    .font(.system(size: 30))
                }

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
