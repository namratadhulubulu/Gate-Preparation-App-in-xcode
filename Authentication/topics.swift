// SyllabusView.swift
import SwiftUI

struct topics: View {
    var chapterNames = ["Discrete Mathematics", "Digital Logic", "Computer Organisation & Achitecture", "Programming & Data Structure", "Algorithms", "Operating System","Computer Network","Database"]

    var body: some View {
        NavigationView {
            VStack {
                
                ScrollView {
                    VStack(spacing: 25) {
                        ForEach(chapterNames.indices, id: \.self) { index in
                            NavigationLink(destination:Details(chapterNumber: index + 1, chapterName: chapterNames[index]) ){
                                Text(chapterNames[index])
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .cornerRadius(40)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Choose Topic")
        }
    }
}


struct topics_Previews: PreviewProvider {
    static var previews: some View {
        topics( )
    }
}
