
import SwiftUI

struct MainView: View {
    var randomNumberSorted : [Int] = []
    var number = [Int](1...45)
    var randomNumber : Set<Int> = []
    init() {
        randomNumberSorted = CreateRandomNumber(randomNumber)
    }
    
    var body: some View {
        VStack{
            HStack{
                HStack{
                    CircleView(randomNumberSorted[0], Color.yellow)
                    CircleView(randomNumberSorted[1], Color.blue)
                    CircleView(randomNumberSorted[2], Color.blue)
                    CircleView(randomNumberSorted[3], Color.red)
                    CircleView(randomNumberSorted[4], Color.gray)
                    CircleView(randomNumberSorted[5], Color.gray)
                }.frame(width: 300,height: 55)
                    .background(Color.mint)
                    .cornerRadius(12)
                    .fixedSize()
                
                Image(systemName: "plus")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .frame(width: 10,height: 10)
                    .foregroundColor(.gray)
                HStack{
                    BonusCircle(number.randomElement(), Color.red)
                }
                .frame(width: 50,height: 55)
                .background(Color.mint)
                .cornerRadius(10)
            }
        }
    }
    
    //랜덤번호 추출
    func CreateRandomNumber(_ randomNumber : Set<Int>) -> [Int]{
        var randomNumber : Set<Int> = []
        while randomNumber.count < 6{
            if let nn = number.randomElement(){
                randomNumber.insert(nn)
            }
        }
        return randomNumber.sorted()
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
struct BonusCircle : View{
    @State var randomNumber : Int = 1
    @State var color : Color
    init(_ randomNumber: Int?, _ color: Color) {
        if let n = randomNumber{
            self.randomNumber = n
        }
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
