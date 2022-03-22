//
//  ContentView.swift
//  ImageProject
//
//  Created by Anuj Soni on 21/03/22.
//
import SwiftUI

struct ContentView: View {

@State private var isAnimating : Bool = false
    
    var body: some View{
   
        Image("IMG-20211118-WA0001")
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius:32))
            .overlay(RoundedRectangle(cornerRadius: 32).stroke(Color.white.opacity(0.2),lineWidth:1))
            .rotationEffect(Angle(degrees:isAnimating ? -12 : 0))
            .scaleEffect(isAnimating ? 0.8 : 1)
            .shadow(color:Color.black.opacity(0.77), radius:30,x:40,y:40)
            .animation(.easeIn(duration:0.9), value:isAnimating)
            .onAppear{
                isAnimating.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


