import SwiftUI

struct LilyKnowledgeView: View {
    var body: some View {
        NavigationView {
            VStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.5, green: 0.8, blue: 0.5), Color.white]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
               
                Text("百合是一种多年生草本植物，具有较长的生长周期。在适宜的环境下，百合的生长期可长达数年，每年春季至夏季会绽放花朵，花朵大而美丽，常用于观赏。部分品种的百合鳞茎（即我们常说的“百合球”）还具有一定的食用价值。这些品种的鳞茎富含淀粉、蛋白质、脂肪及多种维生素和矿物质，具有润肺止咳、清心安神等功效。")
                    .padding()

                VStack {
                    LinearGradient(gradient: Gradient(colors: [Color(UIColor(displayP3Red: 140/225, green: 1, blue: 140/225, alpha: 0)), Color.white]), startPoint: .bottom, endPoint: .top)
                        .edgesIgnoringSafeArea(.all)
                    NavigationLink(destination: PlantingKnowledgeView()) {
                        Text("百合种植知识")
                            .font(.headline)
                            .padding()
                            .background(Color(UIColor(displayP3Red: 140/225, green: 1, blue: 140/225, alpha: 1.0)))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity) // 使按钮宽度尽可能填满父视图
                    }
                    .padding(.bottom)
                    
                    NavigationLink(destination: LilyImagesView()) {
                        Text("百合图片")
                            .font(.headline)
                            .padding()
                            .background(Color(UIColor(displayP3Red: 140/225, green: 1, blue: 140/225, alpha: 1.0)))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.bottom)
                    
                    NavigationLink(destination: LilyIndustryView()) {
                        Text("百合相关产业")
                            .font(.headline)
                            .padding()
                            .background(Color(UIColor(displayP3Red: 140/225, green: 1, blue: 140/225, alpha: 1.0)))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.bottom)
                    
                    NavigationLink(destination: RuralSceneryView()) {
                        Text("乡村美景")
                            .font(.headline)
                            .padding()
                            .background(Color(UIColor(displayP3Red: 140/225, green: 1, blue: 140/225, alpha: 1.0)))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.bottom)
                    
                    NavigationLink(destination: QuizView()) {
                        Text("科普小测试")
                            .font(.headline)
                            .padding()
                            .background(Color(UIColor(displayP3Red: 140/225, green: 1, blue: 140/225, alpha: 1.0)))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.bottom)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity) 
                .padding()
            }
            .navigationBarTitle("百合知识科普", displayMode: .inline)
        }
    }
}

struct LilyKnowledgeView_Previews: PreviewProvider {
    static var previews: some View {
        LilyKnowledgeView()
    }
}
