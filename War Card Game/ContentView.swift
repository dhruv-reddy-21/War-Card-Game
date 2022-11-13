//
//  ContentView.swift
//  War Card Game
//
//  Created by Dhruv Reddy on 1/17/22.
//

import SwiftUI

struct ContentView:View {
    @State var playerScore = 0
    @State var computerScore = 0
    @State var playerCard = 2
    @State var computerCard = 2
    var body: some View {
        ZStack(){
            Image("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                    .padding()
                Spacer()
                HStack{
                    Image("card\(playerCard)")
                        .padding()
                    Image("card\(computerCard)")
                        .padding()
                }.padding()
                Spacer()
                Button(action: {
                    playerCard = Int.random(in: 2...14)
                    computerCard = Int.random(in: 2...14)
                    if playerCard > computerCard {
                        playerScore += 1
                    }
                    if computerCard > playerCard {
                        computerScore += 1
                    }
                    else {
                        computerScore += 1
                        playerScore += 1
                    }
                }, label: {Image("dealbutton")})
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                        Text("\(playerScore)")
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                    }
                    Spacer()
                    VStack {
                        Text("Computer")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                        Text("\(computerScore)")
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
