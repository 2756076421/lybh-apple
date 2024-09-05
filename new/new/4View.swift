import SwiftUI

struct RuralSceneryView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("乡村美景")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Text("探索美丽的乡村风景，欣赏自然的魅力。以下是一些迷人的乡村风光：")
                    .padding()

                // Section for Rolling Hills
                Group {
                    Text("起伏的山丘")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("乡村的起伏山丘常常被绿树和野花覆盖，给人一种宁静和松弛的感觉。")
                    Image("shan1") // Placeholder for an image of Rolling Hills
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }

                // Section for Fields of Flowers
                Group {
                    Text("花海")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("春夏之际，田野上色彩缤纷的花朵竞相绽放，形成一幅自然的画卷。")
                    Image("hua") // Placeholder for an image of Fields of Flowers
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }

                // Section for Tranquil Lakes
                
                // Section for Rustic Farms
                Group {
                    Text("乡村")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("传统的乡村展现了人们与自然的和谐共处，通常有美丽的农田和可爱的动物。")
                    Image("shan2") // Placeholder for an image of Rustic Farms
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }

                // Conclusion
               
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct RuralSceneryView_Previews: PreviewProvider {
    static var previews: some View {
        RuralSceneryView()
    }
}
