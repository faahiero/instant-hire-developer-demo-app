//
//  ContentView.swift
//  InstantHireDeveloper
//
//  Created by Fabricio Silva on 19/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40, design: .rounded))
                    .foregroundColor(.indigo)
                
                Text("Get help from experts in 15 minutes")
                    .foregroundColor(.white)
            }
            
            HStack(alignment: .bottom, spacing: 10) {
                Image("student")
                    .resizable()
                    .scaledToFit()
                Image("tutor")
                    .resizable()
                    .scaledToFit()
            }.padding(.horizontal, 60)
            
            Text("Need help with coding problems? Register!")
                    .foregroundColor(.white)
            
            Spacer()
            
            if verticalSizeClass == .compact{
                HSignUpButtonGroup()
            } else {
                VSignUpButtonGroup()
            }
            
        }
        .padding(.top, 30)
        .background {
            Image("background")
                .resizable()
                .ignoresSafeArea()
        }
    }
}


struct VSignUpButtonGroup: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}


struct HSignUpButtonGroup: View {
    var body: some View{
        HStack {
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
