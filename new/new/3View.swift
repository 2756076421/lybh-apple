import SwiftUI

struct LilyIndustryView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("百合相关产业")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Text("百合在农业、食品和药品等多个产业中具有重要价值。以下是一些主要领域：")
                    .padding()

                // Section for Agricultural Production
                Group {
                    Text("农业生产")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("百合作为一种受欢迎的观赏植物，在农业中扮演着重要角色。农民种植百合以满足市场对花卉的需求，提供美丽的景观。")
                    Image("Image 4") // Placeholder for an image representing Agricultural Production
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }

                // Section for Culinary Uses
                Group {
                    Text("食品用途")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("百合的鳞茎和花瓣可用于烹饪，添加到多种菜肴中，具有独特的风味和营养价值，适合健康饮食。")
                    Image("gao") // Placeholder for an image representing Culinary Uses
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }

                // Section for Medicinal Applications
                Group {
                    Text("药用价值")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("在传统中医中，百合被认为具有多种药用功效，常用于治疗湿热、咳嗽等病症，对健康有益。")
                    Image("placeholder") // Placeholder for an image representing Medicinal Applications
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

struct LilyIndustryView_Previews: PreviewProvider {
    static var previews: some View {
        LilyIndustryView()
    }
}
