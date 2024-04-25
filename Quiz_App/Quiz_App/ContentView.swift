//
//  ContentView.swift
//  Quiz_App
//
//  Created by StudentAM on 4/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Random Quiz")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                NavigationLink(destination: {
                    QuizAppP1()
                    }, label: {
                    Text("Begin")
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
        .padding()
    }
}

#Preview {
    ContentView()
}
