import SwiftUI

struct Question {
    let questionText: String
    let options: [String]
    let correctAnswer: String
}

class QuizViewModel: ObservableObject {
    @Published var questions: [Question] = []
    @Published var selectedAnswers: [Int: String] = [:]
    @Published var score: Int = 0
    @Published var incorrectQuestions: [Question] = []
    
    init() {
        // 初始化问题列表
        let allQuestions = [
            Question(questionText: "百合属于哪个植物科？", options: ["A) 菊科", "B) 百合科", "C) 兰科", "D) 罂粟科"], correctAnswer: "B) 百合科"),
            Question(questionText: "百合原产于哪个洲？", options: ["A) 亚洲", "B) 非洲", "C) 欧洲", "D) 美洲"], correctAnswer: "A) 亚洲"),
            Question(questionText: "百合花通常有多少个花瓣？", options: ["A) 4个", "B) 5个", "C) 6个", "D) 7个"], correctAnswer: "C) 6个"),
            Question(questionText: "百合花通常在什么季节开花？", options: ["A) 春季", "B) 夏季", "C) 秋季", "D) 冬季"], correctAnswer: "A) 春季"),
            Question(questionText: "百合花的颜色中最常见的是哪种？", options: ["A) 白色", "B) 红色", "C) 黄色", "D) 紫色"], correctAnswer: "A) 白色"),
            Question(questionText: "百合花在中国文化中通常象征什么？", options: ["A) 纯洁与高雅", "B) 富贵与荣华", "C) 坚韧与不屈", "D) 智慧与学识"], correctAnswer: "A) 纯洁与高雅"),
            Question(questionText: "百合花在全球哪个地区最为知名？", options: ["A) 日本", "B) 法国", "C) 荷兰", "D) 巴西"], correctAnswer: "A) 日本"),
            Question(questionText: "哪种百合花品种最为著名，常用于婚礼装饰？", options: ["A) 卡特兰百合", "B) 香水百合", "C) 虎皮百合", "D) 鹿子百合"], correctAnswer: "B) 香水百合"),
            Question(questionText: "百合花的雄蕊数量通常是？", options: ["A) 3个", "B) 5个", "C) 6个", "D) 10个"], correctAnswer: "C) 6个"),
            Question(questionText: "百合花的香味来源于哪个部分？", options: ["A) 花瓣", "B) 花蕊", "C) 叶子", "D) 茎"], correctAnswer: "B) 花蕊"),
            Question(questionText: "哪种百合花品种的花瓣带有斑点？", options: ["A) 虎皮百合", "B) 麝香百合", "C) 香水百合", "D) 鹿子百合"], correctAnswer: "A) 虎皮百合"),
            Question(questionText: "百合花可以通过什么方式繁殖？", options: ["A) 种子繁殖", "B) 扦插繁殖", "C) 压条繁殖", "D) 嫁接繁殖"], correctAnswer: "A) 种子繁殖"),
            Question(questionText: "百合花的叶子形状通常是？", options: ["A) 针形", "B) 披针形", "C) 圆形", "D) 椭圆形"], correctAnswer: "B) 披针形"),
            Question(questionText: "百合花的生长习性更倾向于哪种环境？", options: ["A) 干旱", "B) 潮湿", "C) 高温", "D) 阴凉"], correctAnswer: "B) 潮湿"),
            Question(questionText: "哪种百合花品种的花期最长？", options: ["A) 香水百合", "B) 虎皮百合", "C) 亚洲百合", "D) 东方百合"], correctAnswer: "D) 东方百合"),
            Question(questionText: "百合花的根茎部位被称为什么？", options: ["A) 块茎", "B) 鳞茎", "C) 球茎", "D) 根茎"], correctAnswer: "B) 鳞茎"),
            Question(questionText: "百合花的哪一部分在中医中有药用价值？", options: ["A) 花瓣", "B) 花蕊", "C) 鳞茎", "D) 叶子"], correctAnswer: "C) 鳞茎"),
            Question(questionText: "百合花的花语中与“重生”相关的是哪种？", options: ["A) 香水百合", "B) 虎皮百合", "C) 鹿子百合", "D) 火百合"], correctAnswer: "D) 火百合"),
            Question(questionText: "百合花的叶子是否有毒？", options: ["A) 是，全株有毒", "B) 否，完全无毒", "C) 部分有毒", "D) 未知"], correctAnswer: "B) 否，完全无毒"),
            Question(questionText: "百合花的哪种品种常被用作切花？", options: ["A) 虎皮百合", "B) 麝香百合", "C) 亚洲百合", "D) 东方百合"], correctAnswer: "D) 东方百合"),
            Question(questionText: "百合花的种植过程中需要注意防治哪种虫害？", options: ["A) 蚜虫", "B) 蜗牛", "C) 蚂蚁", "D) 蜘蛛"], correctAnswer: "A) 蚜虫"),
            Question(questionText: "百合花的哪种颜色在婚礼上不太常见？", options: ["A) 白色", "B) 粉色", "C) 黄色", "D) 黑色"], correctAnswer: "D) 黑色"),
            Question(questionText: "百合花的哪一部分最常用于制作香水？", options: ["A) 花瓣", "B) 花蕊", "C) 叶子", "D) 茎"], correctAnswer: "A) 花瓣"),
            Question(questionText: "百合花的哪种品种对光照需求较低？", options: ["A) 香水百合", "B) 虎皮百合", "C) 亚洲百合", "D) 东方百合"], correctAnswer: "C) 亚洲百合"),
            Question(questionText: "百合花的哪个部位可以储存养分？", options: ["A) 花瓣", "B) 花蕊", "C) 鳞茎", "D) 叶子"], correctAnswer: "C) 鳞茎"),
            Question(questionText: "百合花的哪种颜色在西方文化中常被视为不吉利的？", options: ["A) 白色", "B) 红色", "C) 黄色", "D) 紫色"], correctAnswer: "C) 黄色"),
            Question(questionText: "百合花的哪个部位可以入药治疗咳嗽？", options: ["A) 花瓣", "B) 花蕊", "C) 鳞茎", "D) 叶子"], correctAnswer: "C) 鳞茎"),
            Question(questionText: "百合花的哪种品种花朵最大？", options: ["A) 香水百合", "B) 虎皮百合", "C) 亚洲百合", "D) 东方百合"], correctAnswer: "A) 香水百合"),
            Question(questionText: "百合花的哪个部位可以吸收养分和水分？", options: ["A) 花瓣", "B) 花蕊", "C) 鳞茎", "D) 根部"], correctAnswer: "D) 根部"),
            Question(questionText: "百合花的哪种颜色常被用作婚礼主题色？", options: ["A) 白色", "B) 红色", "C) 黄色", "D) 紫色"], correctAnswer: "A) 白色"),
            Question(questionText: "百合花的哪种品种对土壤要求最低？", options: ["A) 香水百合", "B) 虎皮百合", "C) 亚洲百合", "D) 东方百合"], correctAnswer: "C) 亚洲百合"),
            Question(questionText: "百合花的哪个部位最容易受到病虫害的侵袭？", options: ["A) 花瓣", "B) 花蕊", "C) 叶子", "D) 根部"], correctAnswer: "C) 叶子"),
            Question(questionText: "百合花的哪种颜色最为罕见？", options: ["A) 白色", "B) 蓝色", "C) 黄色", "D) 紫色"], correctAnswer: "B) 蓝色"),
            // 继续添加问题
        ]
        
        // 随机选择5个问题
        questions = Array(allQuestions.shuffled().prefix(5))
    }
    
    func checkAnswers() {
        score = 0
        incorrectQuestions.removeAll()
        
        for (index, question) in questions.enumerated() {
            if selectedAnswers[index] == question.correctAnswer {
                score += 1
            } else {
                incorrectQuestions.append(question)
            }
        }
    }
}
struct QuizView: View {
    @ObservedObject var viewModel = QuizViewModel()
    @State private var showResult = false
    @State private var currentQuestionIndex = 0

    var body: some View {
        ZStack {
            // Dark background
            Color.black.opacity(0.7)
                .edgesIgnoringSafeArea(.all)

            VStack {
                if !showResult {
                    VStack {
                        // Title included in the floating window
                        Text("百合知识测试")
                            .font(.largeTitle)
                            .padding(.top)

                        Text(viewModel.questions[currentQuestionIndex].questionText)
                            .font(.headline)
                            .padding()

                        ForEach(viewModel.questions[currentQuestionIndex].options, id: \.self) { option in
                            Button(action: {
                                viewModel.selectedAnswers[currentQuestionIndex] = option
                            }) {
                                Text(option)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(viewModel.selectedAnswers[currentQuestionIndex] == option ? Color.blue : Color.gray.opacity(0.2))
                                    .foregroundColor(.black)
                                    .cornerRadius(8)
                            }
                            .padding(.horizontal)
                        }

                        HStack {
                            if currentQuestionIndex > 0 {
                                Button("上一题") {
                                    currentQuestionIndex -= 1
                                }
                                .padding()
                            }

                            Spacer()

                            Button(currentQuestionIndex < viewModel.questions.count - 1 ? "下一题" : "提交") {
                                if currentQuestionIndex < viewModel.questions.count - 1 {
                                    currentQuestionIndex += 1
                                } else {
                                    viewModel.checkAnswers()
                                    showResult = true
                                }
                            }
                            .padding()
                        }
                    }
                    .padding()
                    .background(Color.white) // White background for the quiz content
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .padding(.horizontal)
                } else {
                    ResultView(score: viewModel.score, incorrectQuestions: viewModel.incorrectQuestions)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 10)
                        .padding(.horizontal)
                }
            }
            .padding(.bottom, 20) // Padding to avoid content being too close to the bottom
        }
        .navigationBarBackButtonHidden(true) // Hide the back button
    }
}
