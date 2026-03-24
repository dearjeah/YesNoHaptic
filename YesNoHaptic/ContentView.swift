//
//  ContentView.swift
//  YesNoHaptic
//
//  Created by Delvina J on 06/03/26.
//

import SwiftUI

struct ContentView: View {
    @State private var currentQuestion: String = "Tap a button to start!"
    
    let questions = [
        "Do you like SwiftUI?",
        "Is the sky blue?",
        "Do you enjoy coding?",
        "Is pizza delicious?",
        "Do you use iOS?"
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text(currentQuestion)
                .font(.title)
                .padding()
            
            Spacer()
            HStack {
                Button("Yes") {
                    randomizeQuestion()
                }
                .padding()
                .background(Color.green.opacity(0.7))
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Button("No") {
                    randomizeQuestion()
                }
                .padding()
                .background(Color.red.opacity(0.7))
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.bottom, 40)
            Spacer()
        }
    }
    
    func randomizeQuestion() {
        if let random = questions.randomElement() {
            currentQuestion = random
        }
    }
}

#Preview {
    ContentView()
}
