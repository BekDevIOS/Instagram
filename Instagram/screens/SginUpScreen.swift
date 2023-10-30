//
//  SginUpScreen.swift
//  Instagram
//
//  Created by Utkirbek Mekhmonboev on 10/30/23.
//

import SwiftUI

struct SginUpScreen: View {
    @Environment(\.presentationMode) var presentation
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    var body: some View {
        VStack{
            Spacer()
            TextField("Firstname", text: $firstname)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2).cornerRadius(45))
            TextField("Lastname", text: $lastname)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2).cornerRadius(45))
            TextField("Email", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2).cornerRadius(45))
            TextField("Address", text: $address)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2).cornerRadius(45))
            SecureField("Password", text: $password)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2).cornerRadius(45))
            Button(action: {  },
                   label: {
                HStack{
                    Spacer()
                    Text("Sign Up").foregroundColor(.white)
                Spacer()}
            }).frame(height: 45)
                .background(Color.red).cornerRadius(45)
            
            Spacer()
            HStack{
                Text("Already have an account?").foregroundColor(.blue)
                Button(action: {
                    presentation.wrappedValue.dismiss()},
                       label:  {
                    Text("Sgin In")
                }).foregroundColor(.blue).font(.system(size: 18))
            }
        }.padding()
    }
}

#Preview {
    SginUpScreen()
}
