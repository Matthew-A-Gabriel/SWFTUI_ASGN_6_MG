//
//  ContentView.swift
//  Quiz_App
//
//  Created by StudentAM on 4/23/24.
//

import SwiftUI

struct Question{
    var question: String
    var options: [String]
    var correctAns: String
}


struct ContentView: View {
    @State private var questions: [Question] = [
        Question(question: "What is Seto Kaiba Known for?", options: ["Dark Magician","Gaia The Fierce Knight","Red Eyes Black Dragon"], correctAns: "Blue Eyes White Dragon"),
        Question(question: "What kind of card is 'Umi'?", options: ["Trap","Normal Monster","Effect Monster"], correctAns: "Spell"),
        Question(question: "What kind of monster is 'Relinquished'?", options: ["Pendulumn","Toon","Fusion"], correctAns: "Ritual"),
        Question(question: "In the YuGiOH 5Ds anime, which monster is the Ace monster of the the protagonist", options: ["Dark Magician","Number 39: Utopia","Elemental Hero Neos"], correctAns: "Star Dust Dragon"),
        Question(question: "Tuner monsters are primarily used to summon", options: ["Fusion Monsters","XyZ Monsters","Ritual Monsters"], correctAns: "Synchro Monsters"),
        Question(question: "Which of these cards require 3 Tributes", options: ["Kuriboh","the Mega Monarchs","The Elemental Lords"], correctAns: "The Earth Bound Immortals"),
        Question(question: "Which of these send your oppenents monsters to the deck", options: ["Mirror Force","Blazing Mirror Force","Raigeki"], correctAns: "Drowning Mirror Force"),
        Question(question: "What card can King's Knight Special Summon", options: ["Queen's Knight","King's Knight","Flame Swordsman"], correctAns: "Jack's Knight"),
        Question(question: "Which card set all share the ability to attack directly", options: ["Monarchs","Gaia the Fierce Knight","Destiny Heros"], correctAns: "Toon"),
        Question(question: "Solemn Judgement is an example of a", options: ["Quick Play Spell","Normal Spell","Continuous Trap"], correctAns: "Counter Trap"),


    ]
    var body: some View {
        NavigationStack{
            VStack{
                Text("Yu-Gi-Oh Quiz")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                NavigationLink( "Begin", destination: {
                    QuizAppP1(questions: $questions)
                    }
                )
                .frame(width:100, height: 50)
                .foregroundColor(.white)
                .padding(.vertical)
                .padding(.horizontal, 120)
                .background(.blue)
                .cornerRadius(20)
                .font(.system(size: 30))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
