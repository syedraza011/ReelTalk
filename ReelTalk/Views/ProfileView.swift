//
//  ProfileView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var name = ""
    @State private var location = ""
    @State private var profileImage: Image?
    @State private var birthdate = Date()
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Location", text: $location)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            DatePicker("Birthday", selection: $birthdate, in: ...Date(), displayedComponents: .date)
                .datePickerStyle(WheelDatePickerStyle())
                .padding()
            
            Button(action: {
                // Implement logic to add a profile photo
            }) {
                Text("Add Profile Photo")
            }
        }
    }
}

#Preview {
    ProfileView()
}
