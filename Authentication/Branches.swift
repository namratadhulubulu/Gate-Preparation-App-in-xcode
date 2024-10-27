// SyllabusView.swift
import SwiftUI

struct Branches: View {
    var chapterNames = ["Computer Science Engineering", "Electronics & Communication Engineering", "Electrical Engineering", "Civil Engineering", "Mechanical Engineering", "Chemical Engineering"]

    var body: some View {
        NavigationView {
            VStack {
                
                ScrollView {
                    VStack(spacing: 25) {
                        ForEach(chapterNames.indices, id: \.self) { index in
                            NavigationLink(destination: topics()) {
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
            .navigationTitle("Choose Branch")
        }
    }
}


struct SyllabusView_Previews: PreviewProvider {
    static var previews: some View {
        Branches( )
    }
}
