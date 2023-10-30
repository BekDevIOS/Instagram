//
//  SginInScreen1.swift
//  Instagram
//
//  Created by Utkirbek Mekhmonboev on 10/30/23.
//

import SwiftUI

struct SginInScreen1: View {
    @State private var isLinkActive = false
    @State var userId = ""
    @State var userPw = ""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("person")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 80, height: 80).cornerRadius(80)
                TextField("User ID", text: $userId)
                    .frame(height: 45).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2).cornerRadius(45))
                SecureField("User PW", text: $userPw)
                    .frame(height: 45).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2).cornerRadius(45))
                Button(action: {  },
                       label: {
                    HStack{
                        Spacer()
                        Text("Sign In").foregroundColor(.white)
                        Spacer()}
                }).frame(height: 45)
                    .background(Color.red).cornerRadius(45)
                
                Spacer()
                HStack{
                    Text("Don't have an account?").foregroundColor(.blue)
                    NavigationLink(destination: SginUpScreen1(), label: {Text("Sgin Up")})
                        .foregroundColor(.blue).font(.system(size: 18))
                       
                }
            }.padding()
                .navigationTitle("Instagram")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SginInScreen1()
}
