import SwiftUI

struct LilyImagesView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("百合图片")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Text("这里展示了一些美丽的百合图片。百合花因其独特的花形和丰富的种类而深受喜爱。以下是一些常见的百合品种及其特征：")
                    .padding()

                // Section for Oriental Lilies
                Group {
                    Text("东方百合")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("东方百合以其大而香的花朵著称，色彩丰富。它们通常在夏季开花，适合栽培在温暖的气候中。")
                    Image("Image 4") // Placeholder for an image of Oriental Lilies
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }
                
                // Section for Asiatic Lilies
                Group {
                    Text("亚洲百合")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("亚洲百合是最常见的百合品种之一。它们开花早，且花色多样点缀花园，适应性强。")
                    Image("yazhou") // Placeholder for an image of Asiatic Lilies
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }

                // Section for Trumpet Lilies
                Group {
                    Text("喇叭百合")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("喇叭百合以其长喇叭状的花朵而闻名，通常具有浓郁的香气，适合用于花坛和切花。")
                    Image("laba") // Placeholder for an image of Trumpet Lilies
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }

                // Section for Martagon Lilies
                Group {
                    Text("马尔塔贡百合")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("马尔塔贡百合以其独特的花形和优雅的姿态受到喜爱，类似于山地的自然环境。")
                    Image("matagong") // Placeholder for an image of Martagon Lilies
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }

                // Section for Edible Lilies
                Group {
                    Text("食用百合")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("某些百合品种的鳞茎可以食用，常用于中式烹饪。食用百合富含营养，具有润肺止咳的功效。常见的食用百合包括百合鳞茎和百合花。")
                    Image("placeholder") // Placeholder for an image of Edible Lilies
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

struct LilyImagesView_Previews: PreviewProvider {
    static var previews: some View {
        LilyImagesView()
    }
}
