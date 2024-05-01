//
//  QuizAppP1.swift
//  Quiz_App
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI


struct QuizAppP1: View {
//    So Many QUESTIONS AAAAA, it's all about YuGiOh.
    @State private var questions: [Question] = [
        Question(question: "What is Seto Kaiba Known for?", options: ["Dark Magician","Gaia The Fierce Knight","Red Eyes Black Dragon"], correctAns: "Blue Eyes White Dragon"),
        Question(question: "What kind of card is 'Umi'?", options: ["Trap","Normal Monster","Effect Monster"], correctAns: "Spell"),
        Question(question: "What kind of monster is 'Relinquished'?", options: ["Pendulumn","Toon","Fusion"], correctAns: "Ritual"),
        Question(question: "In the YuGiOH Zexal anime, which monster is the Ace monster of the the protagonist", options: ["Dark Magician","Star Dust Dragon","Elemental Hero Neos"], correctAns: "Number 39: Utopia"),
        Question(question: "Tuner monsters are primarily used for which summon", options: ["Fusion Summon","XyZ Summon","Ritual Summon"], correctAns: "Synchro Summon"),
        Question(question: "Which of these cards require 3 Tributes", options: ["Kuriboh","the Mega Monarchs","The Elemental Lords"], correctAns: "The Earth Bound Immortals"),
        Question(question: "Which of these sends your oppenents monsters to the deck", options: ["Mirror Force","Blazing Mirror Force","Raigeki"], correctAns: "Drowning Mirror Force"),
        Question(question: "What card can King's Knight Special Summon", options: ["Queen's Knight","King's Knight","Flame Swordsman"], correctAns: "Jack's Knight"),
        Question(question: "Which card set all share the ability to attack directly", options: ["Monarchs","Gaia the Fierce Knight","Destiny Heros"], correctAns: "Toon"),
        Question(question: "Solemn Judgement is an example of a", options: ["Quick Play Spell","Normal Spell","Continuous Trap"], correctAns: "Counter Trap"),
]
//    Variables for the logic and to keep score
    @State private var nextIsVisable: Bool = false
    @State private var questionCounter: Int = 0
    @State private var savedValue: String = ""
    @State private var score: Int = 0
//    Body, Nav and ZStack again
    var body: some View {
        NavigationView{
            ZStack{
//                From the card known as Gozen Match, that's the image
                Image("yugiohBG2")
                    .resizable()
                    .frame(width: 450, height: 880)
//                same black and yellow color scheme, Questions # counter +1, since counter is also used for the internal logic
                VStack{
                    Text("Question \(questionCounter + 1)")
                    Text("Score: \(score)")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    
//                    3 of these if statement, they decide where the correct answer is
//                    in addition, they al have the same black and yellow coloring
//                    Buttons save your answer to a variable
//                    they disable if you hit sumbit
                    if (questionCounter == 0 || questionCounter == 1 || questionCounter == 3 || questionCounter == 9){
                        Text("\(questions[questionCounter].question)")
                            .fontWeight(.bold)
                            .font(.largeTitle)
                            .foregroundStyle(.yellow)
                            .padding()
                            .background(.black)
                            .border(Color.gray)
                            .cornerRadius(20)
                            .multilineTextAlignment(.center)
                        
                        Button("\(questions[questionCounter].options[1])"){
                            savedValue = questions[questionCounter].options[1]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .multilineTextAlignment(.center)
                        .disabled(nextIsVisable == true)
                        Button("\(questions[questionCounter].options[2])"){
                            savedValue = questions[questionCounter].options[2]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                        Button("\(questions[questionCounter].options[0])"){
                            savedValue = questions[questionCounter].options[0]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                        Button("\(questions[questionCounter].correctAns)"){
                            savedValue = questions[questionCounter].correctAns
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                    }
                    if (questionCounter == 2 || questionCounter == 4 || questionCounter == 6 || questionCounter == 8){
                        Text("\(questions[questionCounter].question)")
                            .fontWeight(.bold)
                            .font(.largeTitle)
                            .foregroundStyle(.yellow)
                            .padding()
                            .background(.black)
                            .border(Color.gray)
                            .cornerRadius(20)
                            .multilineTextAlignment(.center)
                        
                        Button("\(questions[questionCounter].options[1])"){
                            savedValue = questions[questionCounter].options[1]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                        
                        Button("\(questions[questionCounter].correctAns)"){
                            savedValue = questions[questionCounter].correctAns
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                        
                        Button("\(questions[questionCounter].options[2])"){
                            savedValue = questions[questionCounter].options[2]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                        
                        Button("\(questions[questionCounter].options[0])"){
                            savedValue = questions[questionCounter].options[0]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                    }
                    
                    if (questionCounter == 5 || questionCounter == 7){
                        Text("\(questions[questionCounter].question)")
                            .fontWeight(.bold)
                            .font(.largeTitle)
                            .foregroundStyle(.yellow)
                            .padding()
                            .background(.black)
                            .border(Color.gray)
                            .cornerRadius(20)
                            .multilineTextAlignment(.center)
                        
                        Button("\(questions[questionCounter].options[1])"){
                            savedValue = questions[questionCounter].options[1]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                        
                        Button("\(questions[questionCounter].options[2])"){
                            savedValue = questions[questionCounter].options[2]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                        
                        Button("\(questions[questionCounter].correctAns)"){
                            savedValue = questions[questionCounter].correctAns
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                        
                        Button("\(questions[questionCounter].options[0])"){
                            savedValue = questions[questionCounter].options[0]
                        }
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .padding()
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .disabled(nextIsVisable == true)
                    }
                    
//                    Submit, it disables selecting a different answer and if you got it right, then you get a point
//                    it also makes the next button visable when clicked, same color scheme
                    Button("Submit"){
                        if savedValue == questions[questionCounter].correctAns{
                            score += 1
                        }
                        nextIsVisable.toggle()
                        
                    }
                    .fontWeight(.bold)
                    .foregroundStyle(.yellow)
                    .padding()
                    .background(.black)
                    .border(Color.gray)
                    .cornerRadius(20)
                    .disabled(nextIsVisable == true)
                    .opacity(questionCounter == 10 ? 0 : 1)
                    
                    
//                    this thing, it makes it the next question when there are questions and if there aren't then it takes you to the final page
                    if questionCounter <= 8 {
                        Button("Next"){
                            nextIsVisable.toggle()
                            questionCounter += 1
                        }
                        .frame(width:100, height: 50)
                        .foregroundColor(.yellow)
                        .padding(.vertical)
                        .padding(.horizontal, 120)
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .font(.system(size: 30))
                        .opacity(nextIsVisable ? 1 : 0)
                    }
                    else {
                        NavigationLink(destination: {
//                            transfer score data to end page
                            QuizAppEnd(finScore: score)
                        }, label: {
                            Text("Next")
                            
                        })
                        .frame(width:100, height: 50)
                        .foregroundColor(.yellow)
                        .padding(.vertical)
                        .padding(.horizontal, 120)
                        .background(.black)
                        .border(Color.gray)
                        .cornerRadius(20)
                        .font(.system(size: 30))
                        .opacity(nextIsVisable ? 1 : false && questionCounter == 9 ? 1 : 0)
                    }
                }
            }
        }
    }
}

#Preview {
    QuizAppP1()
}
