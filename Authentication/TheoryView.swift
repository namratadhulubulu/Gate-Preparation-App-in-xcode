import SwiftUI

struct TheoryView: View {
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
                        Link(destination: URL(string: "https://www.javatpoint.com/discrete-mathematics-tutorial")!) {
                            Text("Link")
                        }
                    case 2:
                        Link(destination: URL(string: "https://www.javatpoint.com/digital-electronics")!) {
                            Text("Link")}
                    case 3:Link(destination: URL(string: "https://www.javatpoint.com/computer-organization-and-architecture-tutorial")!) {
                        Text("Link")}
                    case 4:Link(destination: URL(string: "https://www.javatpoint.com/data-structure-tutorial")!) {
                        Text("Link")}
                    case 5:Link(destination: URL(string: "https://www.javatpoint.com/daa-algorithm")!) {
                        Text("Link")}
                        
                    case 6:Link(destination: URL(string: "https://www.javatpoint.com/operating-system-definition")!) {
                        Text("Link")}
                    case 7:Link(destination: URL(string: "https://www.javatpoint.com/computer-network")!) {
                        Text("Link")}
                    case 8:Link(destination: URL(string: "https://www.javatpoint.com/what-is-database")!) {
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
