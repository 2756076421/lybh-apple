//
//  AboutUsView.swift
//  new
//
//  Created by 王智烨 on 2024/9/3.
//
import SwiftUI

struct AboutUsView: View {
    var body: some View {
        ScrollView { // Use ScrollView to allow scrolling if content is too long
            VStack(alignment: .leading, spacing: 20) {
                

                Text("在兰州这片古老而充满活力的土地上，兰州大学的一支精英团队，怀揣着对兰州的深情与责任，踏上了助力兰州市西果园镇乡村振兴的征途。西果园镇，一个自然风光旖旎、文化底蕴深厚的地方，却因地理位置相对偏远、信息流通不畅等因素，导致兰州百合这一地方瑰宝，面临着知名度不高、市场销售渠道有限等挑战。")
                    .font(.body)

                Text("为此，我们团队打造了一款集面向农户百合种植帮助模块与面向大众的百合知识普及模块的APP平台兰韵百合。这款APP不仅是技术创新的结晶，更是连接农户与市场、传承文化与激发经济活力的桥梁。")
                    .font(.body)
                

                // 图片 1
                Image("Image 1") // Placeholder for your image name
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)

                // 图片 2
                Image("Image 2") // Placeholder for your image name
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)

                // 图片 3
                Image("Image") // Placeholder for your image name
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)
                
                Image("Image 3") // Placeholder for your image name
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)

                Spacer() // Adds space at the bottom
            }
            .padding()
        }
        .navigationTitle("关于我们")
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
