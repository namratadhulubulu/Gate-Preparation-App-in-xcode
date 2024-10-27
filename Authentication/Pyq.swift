import SwiftUI

struct Pyq: View {
    let chapterNumber: Int
    let chapterName: String

    var body: some View {
        VStack {
            Text("\(chapterName) Theory")
                .navigationBarTitle("\(chapterName) Theory")
            // Add your theory content here
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    switch chapterNumber {
                    case 1:
                        Link(destination: URL(string: "https://practicepaper.in/gate-cse/discrete-mathematics")!) {
                            Text("Link")
                        }
                    case 2:
                        Link(destination: URL(string: "https://practicepaper.in/gate-cse/digital-logic")!) {
                            Text("Link")}
                    case 3:Link(destination: URL(string: "https://practicepaper.in/gate-cse/computer-organization")!) {
                        Text("Link")}
                    case 4:Link(destination: URL(string: "https://practicepaper.in/gate-cse/data-structure")!) {
                        Text("Link")}
                    case 5:Link(destination: URL(string: "https://practicepaper.in/gate-cse/algorithm")!) {
                        Text("Link")}
                        
                    case 6:Link(destination: URL(string: "https://practicepaper.in/gate-cse/operating-system")!) {
                        Text("Link")}
                    case 7:Link(destination: URL(string: "https://practicepaper.in/gate-cse/computer-network")!) {
                        Text("Link")}
                    case 8:Link(destination: URL(string: "https://practicepaper.in/gate-cse/database-management-system")!) {
                        Text("Link")}
                    
                    default:
                        Text("No content available.")
                    }
                }
                .padding()
            }
        }
    }
}
