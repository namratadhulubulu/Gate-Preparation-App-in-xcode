import SwiftUI
struct Details: View {
    let chapterNumber: Int
    let chapterName: String

    var body: some View {
        VStack {
            
            NavigationLink(destination: TheoryView(chapterNumber: chapterNumber, chapterName: chapterName)) {
                Text("Basic Theory")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)

            NavigationLink(destination: Pyq(chapterNumber: chapterNumber, chapterName: chapterName)) {
                            Text("Previous Year Question")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
            .padding(.horizontal)
            NavigationLink(destination: ProgramView(chapterNumber: chapterNumber, chapterName: chapterName)) {
                            Text("Quiz")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
            .padding(.horizontal)
            Spacer()
        }
    }

    func getTheoryViewForChapter(chapterNumber: Int, chapterName: String) -> some View {
        return TheoryView(chapterNumber: chapterNumber, chapterName: chapterName)
    }
}

func getProgramsForChapter(chapterNumber: Int) -> [String] {
    let numberOfPrograms = 5
    var programs: [String] = []
    for i in 1...numberOfPrograms {
        programs.append("Program \(i)")
    }
    return programs
}
