import SwiftUI

struct ResultView: View {
    let score: Int
    let incorrectQuestions: [Question]
    
    // Access the presentation mode environment variable
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("测试结束")
                .font(.largeTitle)
                .padding()
            Text("你的得分是 \(score * 20)/100")
                .font(.largeTitle)
                .padding()
            
            if !incorrectQuestions.isEmpty {
                Text("错题")
                    .font(.headline)
                    .padding(.top)
                
                List {
                    ForEach(incorrectQuestions, id: \.questionText) { question in
                        VStack(alignment: .leading) {
                            Text(question.questionText)
                            Text("正确答案: \(question.correctAnswer)")
                                .foregroundColor(.red)
                        }
                    }
                }
            } else {
                Text("你答对了所有问题！")
                    .font(.headline)
                    .padding(.top)
            }
            
            HStack {
                Button("返回") {
                    presentationMode.wrappedValue.dismiss() // Dismisses the current view
                }
                .padding()
                
                Spacer()
                
                NavigationLink("重新测试", destination: QuizView())
                    .padding()
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}
