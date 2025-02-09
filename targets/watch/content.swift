import SwiftUI

struct ContentView: View {
  @State private var isPressed = false
  
  var body: some View {
    VStack {
      Image("expo-icon")
        .resizable()
        .scaledToFit()
        .frame(width: 50, height: 50)
        .rotationEffect(.degrees(isPressed ? 360 : 0))
        .animation(.spring(), value: isPressed)
      
      Text("Powered by ")
        .font(.title3)
      + Text("Expo")
        .font(.title3)
        .fontWeight(.bold)
      
      Spacer()
      
      Button(action: {
        isPressed.toggle()
      }) {
        Text("Spin Logo!")
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
