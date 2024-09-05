import SwiftUI

struct PlantingKnowledgeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("百合种植知识")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Text("百合是一种受欢迎的观赏植物，广泛用于园艺和室内装饰。它们不仅美丽，而且有些品种的鳞茎也可以食用。为了确保百合健康成长，种植者需要了解它们的生长条件和护理方法。")
                    .padding()

                // Suitable Temperature
                Group {
                    Text("适宜温度")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("百合的生长最适宜的温度为15°C至25°C。若气温低于5°C或高于30°C，将影响其生长和开花。")
                }
                
                // Elevation and Soil Requirements
                Group {
                    Text("适宜的海拔和土壤")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("百合适合在海拔500米至1500米的地区生长。它们喜欢排水良好、富含有机物的土壤。pH值应保持在6.0至6.8之间。")
                }
                
                // Growth Periods
                Group {
                    Text("生长期")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("百合的生长期通常为春季至夏季，大约需要3至6个月的生长期才能开花。生长速度和时间取决于品种和环境条件。")
                }

                // Planting Tips
                Group {
                    Text("种植小贴士")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("1. 选择健康的百合鳞茎，不要选择有霉变或干枯的鳞茎。\n2. 选择阳光充足的地方，至少要有4-6小时的阳光照射。\n3. 栽种深度一般为洪鳞茎的两倍，保证根部不被压实。\n4. 定期浇水，但不要让土壤积水。")
                }
                
                // Pests and Diseases
                Group {
                    Text("病虫害防治")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("百合常见的虫害包括蚜虫和蜗牛，定期检查植株，并可使用有机农药进行防治。同时，注意避免水分过多，以防根腐病。")
                }
                
                // Additional Care
                Group {
                    Text("额外护理")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("在开花前后施用平衡肥料，以促进健康生长。修剪枯萎花朵可以促进更好的花芽形成。")
                }
                
                // Conclusion
               
            }
            .padding()
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

struct PlantingKnowledgeView_Previews: PreviewProvider {
    static var previews: some View {
        PlantingKnowledgeView()
    }
}
