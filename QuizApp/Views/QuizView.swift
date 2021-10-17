import SwiftUI

struct QuizView: View {
    var answerButton = [1,2,3,4]
    @State var csvArray: [String] = []
    @State var quizArray: [String] = []
    var quizCount = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("第\(quizCount + 1)問")
                    .font(.system(size: 60))
                    .padding(.top, 50)
                    Spacer()
                
                Text("お酢に卵を殻ごと入れると\n卵はどうなるでしょうか？")
                    .font(.system(size: 25))
                    .padding(.bottom, 50)
                
                
                VStack(alignment: .leading) {
                    ForEach(0 ..< 4) { i in
                        Button(action: {
                            csvArray = loadCSV(fileName: "quiz")
                            quizArray = csvArray[quizCount].components(separatedBy: ",")
                        }) {
                            //Add Button UI soon
                        }.padding(.bottom, 20)
                    }
                }
                
                Spacer()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
            }
        }
    }
    
    //load CSV file function
    func loadCSV(fileName: String) -> [String] {
        let csvBundle = Bundle.main.path(forResource: fileName, ofType: "csv")!
        do {
            let csvData = try String(contentsOfFile: csvBundle, encoding: String.Encoding.utf8)
            let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
            csvArray = lineChange.components(separatedBy: "\n")
            csvArray.removeLast()
        } catch {
            print("Error")
        }
        return csvArray
    }
    
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
