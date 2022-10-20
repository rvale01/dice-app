//
//  ContentView.swift
//  Dice App
//
//  Created by Valentina Ronchi on 13/10/2022.
//

import SwiftUI

func updateDiceImages() -> Int{
    return  Int.random(in: 1...6)
}

struct ContentView: View {
    @State private var dice1 = 1
    @State private var dice2 = 1
    var body: some View {
        ZStack {
            VStack(alignment: .center){
                Spacer()
                Image("UWE_Logo")
                    .resizable()
                    .padding(.all)
                    .scaledToFit()
                Spacer()

                HStack(spacing: 100.0){
                    Image("dice" + String(dice1))
                    Image("dice" + String(dice2))
                }
                Spacer()

                Button(action:{
                    dice1 = updateDiceImages()
                    dice2 = updateDiceImages()
                }, label: {
                    Text("Roll")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.all)
                        .foregroundColor(Color.black)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                } )
                Spacer()

            }
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
