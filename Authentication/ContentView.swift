//
//  ContentView.swift
//  Authentication
//
//  Created by AL3 on 04/03/24.
//
/*
import SwiftUI
import Firebase

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSignUp: Bool = false
    @State private var errorMessage: String?

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            }

            Button(action: {
                if isSignUp {
                    signUp()
                } else {
                    signIn()
                }
            }) {
                Text(isSignUp ? "Sign Up" : "Sign In")
            }

            Button(action: {
                isSignUp.toggle()
            }) {
                Text(isSignUp ? "Already have an account? Sign In" : "Don't have an account? Sign Up")
                    .font(.footnote)
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }

    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                // User signed up successfully
                // You can perform further actions like navigating to the next screen
            }
        }
    }

    func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                // User signed in successfully
                // You can perform further actions like navigating to the next screen
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/

import SwiftUI

struct ContentView: View {
    @State private var isSplashScreenShowing = true
    
    var body: some View {
        ZStack {
            if isSplashScreenShowing {
                SplashScreen()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                self.isSplashScreenShowing = false
                            }
                        }
                    }
            } else {
                MainView()
            }
        }
    }
}

struct SplashScreen: View {
    var body: some View {
        // Use Image view for splash screen
        ZStack{
        //Text("GATE PREPARATION")
            //.font(.title)
            //.padding()
      
            Image("gate") // Replace "your_image_name_here" with the name of your image asset
                .resizable()
                .aspectRatio(contentMode: .fit)
            .padding()}
       
    }
}

struct MainView: View {
    var body: some View {
        // Your main app content here
        LoginPage()
        //Branches()
    }
}
