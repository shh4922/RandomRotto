//
//  MainView.swift
//  RandomRotto
//
//  Created by HyeonHo on 2023/01/04.
//

import SwiftUI

struct MainView: View {
    @State var number = [Int](1...45)
    @State var randomNumber : [Int] = []
    
    init() {
        CreateRandomNumber()
    }
    var body: some View {
        VStack{
            HStack{
                HStack{
                    CircleView(randomNumber[0], Color.yellow)
                    CircleView(randomNumber[1], Color.yellow)
                    CircleView(randomNumber[2], Color.yellow)
                    CircleView(randomNumber[3], Color.yellow)
                    CircleView(randomNumber[4], Color.yellow)
                    CircleView(randomNumber[5], Color.yellow)
                }
                
            }
            .frame(width: 300,height: 60)
            .background(Color.mint)
            .cornerRadius(12)
            .fixedSize()
            Image(systemName: "plus")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .frame(width: 10,height: 10)
                .foregroundColor(.gray)
        }
    }
    
    //랜덤번호 추출
    func CreateRandomNumber() {
        for _ in 0..<6{
            if let n = number.randomElement(){
                randomNumber.append(n)
            }
        }
    }
    
}

struct CircleView : View{
    @State var randomNumber : Int
    @State var color : Color
    init(_ randomNumber: Int, _ color: Color) {
        self.randomNumber = randomNumber
        self.color = color
    }
    var body: some View{
        ZStack{
            Circle()
                .fill(color)
                .frame(width: 40,height: 40)
            Text("\(randomNumber)")
                .foregroundColor(Color.white)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
