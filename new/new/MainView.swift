import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Full-screen gradient background
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                    

                VStack {
                    // Farmer Button
                    NavigationLink(destination: FarmerView()) {
                        HStack {
                            Text("百合种植助手")
                                .font(.title)
                                .padding()
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "leaf.fill") // Replace with your sprouting icon
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.green)
                                .frame(width: 60, height: 210)
                        }
                        .padding()
                        .background(Color(UIColor(displayP3Red: 204/225, green: 1, blue: 204/225, alpha: 1.0)))

                        .cornerRadius(10)
                        .shadow(radius: 5)
                        
                    }
                    .padding()

                    // Consumer Button
                    NavigationLink(destination: LilyKnowledgeView()) {
                        HStack {
                            Text("百合知识科普")
                                .font(.title)
                                .padding()
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "camera.macro") // Replace with your lily icon
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color(UIColor(displayP3Red: 1, green: 204/255, blue: 204/225, alpha: 1.0)))
                                .frame(width: 60, height: 210)
                        }
                        .padding()
                        .background(Color(UIColor(displayP3Red: 204/225, green: 1, blue: 204/225, alpha: 1.0)))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }
                    .padding()
                    .navigationBarBackButtonHidden(true)

                    
                        
                }

                // About Us Button
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink(destination: AboutUsView()) {
                            HStack {
                                Text("关于我们")
                                    .font(.headline)
                                    .padding(2)
                                Image(systemName: "info.circle") // Replace with your info icon
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                            }
                            .padding()
                            
                            
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("兰韵百合")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


