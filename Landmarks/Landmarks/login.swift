//
//  ContentView.swift
//  Shared
//
//  Created by Quentin Thomas on 23/11/2020.
//

import SwiftUI
enum ActionState: Int {
    case setup = 0
    case readyForPush = 1
}

struct Login: View {
    @State private var login: String = ""
    @State private var pwd: String = ""
    @State private var actionState: ActionState? = .setup
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                NavigationLink(destination: menu.init(), tag: .readyForPush, selection: $actionState) {
                }
                
                VStack(alignment: .leading, spacing: 15) {
                    TextField("Email", text: self.$login)
                        .padding()
                        .cornerRadius(20.0)
                    
                    SecureField("Password", text: self.$pwd)
                        .padding()
                        .cornerRadius(20.0)
                }.padding([.leading, .trailing], 27.5)
                
                Button(action: {
                    self.actionState = .readyForPush

                    if (login == "A" && pwd == "a") {
                        self.actionState = .readyForPush
                        
                    }
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
