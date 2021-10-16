import SwiftUI

struct QuizView: View {
    var body: some View {
        let QuizAnswer = ["①透明な卵になる", "②卵が溶けてなくなる", "③卵が石のように硬くなる", "④鏡のようになんでもうつる卵になる"]
        VStack {
            Text("Quiz 1")
                .font(.system(size: 60))
                .padding(.top, 50)
                Spacer()
            
            Text("お酢に卵を殻ごと入れると\n卵はどうなるでしょうか？")
                .font(.system(size: 25))
                .padding(.bottom, 50)
            
            // 4 select answer Button loop action
            VStack(alignment: .leading) {
                ForEach(0 ..< 4) { i in
                    Button(action: {
                        
                    }) {
                        Text(QuizAnswer[i])
                    }.padding(.bottom, 20)
                }
            }
            
            Spacer()
                .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
