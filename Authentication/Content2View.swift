//
//  Content2View.swift
//  Authentication
//
//  Created by AL3 on 04/03/24.
//



import SwiftUI
struct Content2View: View {
    var body: some View {
        NavigationView {
            
                
                VStack {
                    ZStack{
                    //Text("GATE PREPARATION")
                        //.font(.title)
                        //.padding()
                  
                        Image("gate") // Replace "your_image_name_here" with the name of your image asset
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .padding()}
                        Button("start"){
                            
                            
                            
                            
                        }
                    
                }
                .navigationBarTitle("")
            
        }
    }
}

struct AnotherView_Previews: PreviewProvider {
    static var previews: some View {
        Content2View()
    }
}
