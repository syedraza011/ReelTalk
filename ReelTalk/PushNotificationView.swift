//
//  PushNotificationView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
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
