import SwiftUI

struct QuizView: View {
    var csvArray: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                Text("Quiz 1")
                    .font(.system(size: 60))
                    .padding(.top, 50)
                    Spacer()
                
                Text("お酢に卵を殻ごと入れると\n卵はどうなるでしょうか？")
                    .font(.system(size: 25))
                    .padding(.bottom, 50)
                
                // 4 select answer Button loop action
//                VStack(alignment: .leading) {
//                    ForEach(0 ..< 4) { i in
//                        Button(action: {
//
//                        }) {
//                            Text(QuizAnswer[i])
//                        }.padding(.bottom, 20)
//                    }
//                }
                
                Spacer()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
            }
        }
    }
    
    
    mutating func loadCSV(fileName: String) -> [String] {
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
