//
//  MainView.swift
//  RandomRotto
//
//  Created by HyeonHo on 2023/01/04.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HStack{
            HStack{
                YellowCircle()
                BlueCircle()
                BlueCircle()
                RedCircle()
                GrayCircle()
                GrayCircle()
            }
            .background(Color.brown)
            .cornerRadius(10)
            HStack{
                RedCircle()
            }
        }
        
        
    }
}

struct YellowCircle: View{
    var randomNumber = Int.random(in: 1...45)
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.yellow)
                .frame(width: 40,height: 40)
            Text("\(randomNumber)")
            
                .foregroundColor(Color.white)
                .font(.system(size: 21))
        }
    }
}
struct GrayCircle: View{
    var randomNumber = Int.random(in: 1...45)
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.gray)
                .frame(width: 40,height: 40)
            Text("\(randomNumber)")
                .foregroundColor(Color.white)
                .font(.system(size: 21))
        }
    }
}
struct BlueCircle: View{
    var randomNumber = Int.random(in: 1...45)
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.blue)
                .frame(width: 40,height: 40)
                .shadow(radius: 2,x: 2,y:2)
            Text("\(randomNumber)")
                .foregroundColor(Color.white)
                .font(.system(size: 21))
        }
    }
}
struct RedCircle: View{
    var randomNumber = Int.random(in: 1...45)
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.red)
                .frame(width: 40,height: 40)
                .shadow(radius: 2,x: 2,y:2)
            Text("\(randomNumber)")
                .foregroundColor(Color.white)
                .font(.system(size: 21))
        }
    }
}
    

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
