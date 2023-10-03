//
//  PushNotificationView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//
//
//import SwiftUI
//
//struct PushNotificationView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
#Preview {
    PushNotificationView()
}
import SwiftUI

struct PushNotificationView: View {
    var body: some View {
        VStack {
            Text("Turn on Push Notifications")
                .font(.title)
            
            Button(action: {
                // Implement logic to request push notification permissions
            }) {
                Text("Enable Notifications")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}
