//
//  ContentView.swift
//  War Card Game
//
//  Created by Dhruv Reddy on 1/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerScore:Int = 0
    @State var computerScore:Int = 0
    @State var playerCard:Int = Int.random(in: 2...14)
    @State var computerCard:Int = Int.random(in: 2...14)
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: geo.size.width / 2, height: geo.size.height / 8, alignment: .center)
                    Spacer()
                    HStack{
                        Spacer()
                        Image("card\(playerCard)")
                        Spacer()
                        Image("card\(computerCard)")
                        Spacer()
                    }
                    Spacer()
                    Button {
                        if (playerCard > computerCard){
                            playerScore += 1
                        }
                        else {
                            computerScore += 1
                        }
                        playerCard = Int.random(in: 2...14)
                        computerCard = Int.random(in: 2...14)
                    } label: {
                        Image("dealbutton")
                            .resizable()
                            .frame(width: geo.size.width / 2, height: geo.size.height / 10, alignment: .center)
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        VStack{
                            Text("Player")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .padding(1)
                            Text("\(playerScore)")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .padding(1)
                        }
                        Spacer()
                        VStack{
                            Text("Computer")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .padding(1)
                            Text("\(computerScore)")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .padding(1)
                        }
                        Spacer()
                    }

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
