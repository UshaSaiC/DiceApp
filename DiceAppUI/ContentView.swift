import SwiftUI

struct ContentView: View {
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
                    DiceView(imageName: "dice1")
                    DiceView(imageName: "dice2")
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
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
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 150, height: 150)
            .padding()
    }
}
