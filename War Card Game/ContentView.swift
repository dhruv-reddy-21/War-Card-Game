//
//  ContentView.swift
//  War Card Game
//
//  Created by Dhruv Reddy on 1/17/22.
//

import SwiftUI

struct ContentView: View {
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
                        Image("card2")
                        Spacer()
                        Image("card3")
                        Spacer()
                    }
                    Spacer()
                    Button {
                        
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
                            Text("0")
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
                            Text("0")
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
