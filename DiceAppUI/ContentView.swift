import SwiftUI

struct ContentView: View {
    
    // Structs are immutable, if we want to change values we need to destroy previous one and create a new one
    // State is a property wrapper that helps in updating values in struct and recreate a new one
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            VStack {
                Image("diceeLogo")
                //Spacer is used to create space between components
                Spacer()
                HStack {
                    DiceView(imageName: leftDiceNumber)
                    DiceView(imageName: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.padding(.vertical)
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let imageName: Int
    var body: some View {
        Image("dice\(imageName)")
            .resizable()
            .frame(width: 150, height: 150)
            .padding()
    }
}
