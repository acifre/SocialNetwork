//
//  DetailView.swift
//  SocialNetwork
//
//  Created by Anthony Cifre on 5/27/23.
//

import SwiftUI

struct DetailView: View {
    let user: User
    
    var body: some View {
        Form {
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 50, height: 50)
                        .overlay {
                            Circle()
                                .strokeBorder(lineWidth: 2)
                                .foregroundColor(.blue)
                        }
                    Text("\(user.name.initials(name: user.name))")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                .padding(.trailing, 5)
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.largeTitle)
                    Text(user.isActive ? "Online" : "Offline")
                        .font(.caption)
                        .foregroundColor(user.isActive ? .green: .secondary)
                }
            }
            Section("Contact Info") {
                HStack(alignment: .top){
                    Text("Email:")
                    Spacer()
                    Text(user.email)
                }
                HStack(alignment: .top) {
                    Text("Address: ")
                    Spacer()
                    Text(user.address)
                }
                
            }
            Section("About") {
                HStack {
                    Text("\(user.age) years old")
                }
                    Text(user.about)
            }
            Section("Tags") {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(user.tags, id: \.self) { tag in
                        Text("#\(tag)")
                            .foregroundColor(.blue)
                    }
                }
            }
            Section("Friends") {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(user.friends, id: \.id) { friend in
                        Text(friend.name)
                    }
                }

            }

        }
        .navigationTitle(user.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(user: User())
//    }
//}
