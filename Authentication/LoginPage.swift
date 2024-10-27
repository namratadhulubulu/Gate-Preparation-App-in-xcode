//
//  LoginPage.swift
//  Authentication
//
//  Created by AL3 on 15/04/24.
//

import SwiftUI
import Firebase

struct LoginPage: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var loggedIn: Bool = false
        
    var body: some View {
    
        NavigationView {
            if loggedIn {
                // If logged in, display another view
                Branches()
                //Text("Welcome! You are logged in.")
                
            } else {
                // If not logged in, display login/signup screen
                ZStack{
                    Color(red: 227/255, green: 245/255, blue: 253/255)
                               .edgesIgnoringSafeArea(.all)
                    VStack{
                        HStack{Text(" Email       ")
                                .foregroundColor(.black)
                            TextField("Email", text: $email)
                                .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())}
                        HStack{Text("Password")
                                .foregroundColor(.black)
                            SecureField("Password", text: $password)
                                .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())}
                        
                        Button("Sign Up") {
                            // Attempt sign up
                            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                                // Check for errors
                                if let error = error {
                                    print("Error signing up: \(error.localizedDescription)")
                                } else {
                                    print("User successfully signed up!")
                                    loggedIn = true // Set loggedIn to true on successful sign-up
                                }
                            }
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(8)
                        
                        Button("Sign In") {
                            // Attempt login
                            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                                // Check for errors
                                if let error = error {
                                    print("Error signing in: \(error.localizedDescription)")
                                } else {
                                    print("User successfully logged in!")
                                    loggedIn = true // Set loggedIn to true on successful login
                                }
                            }
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                    }
                    .padding()}
            }
        }
    }
}

struct Content2View_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
