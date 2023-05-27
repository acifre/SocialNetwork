//
//  ContentView.swift
//  SocialNetwork
//
//  Created by Anthony Cifre on 5/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var users = [User]()
    
    var body: some View {
        
        NavigationView {
            List(users, id: \.id) { user in
                    NavigationLink {
                        DetailView(user: user)

                    } label: {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .overlay {
                                        Circle()
                                            .strokeBorder(lineWidth: 2)
                                            .foregroundColor(user.isActive ? .green : .black)
                                    }
                                Text("\(user.name.initials(name: user.name))")
                                    .font(.title3)
                                    .foregroundColor(.black)
                            }
                            .padding(.trailing, 5)
                            VStack(alignment: .leading) {
                                Text(user.name)
                                    .font(.title3)
                                    .foregroundColor(.primary)
                                    .padding([.top, .bottom], 1)
                                Text(user.isActive ? "Online" : "Offline")
                                    .font(.caption)
                                    .foregroundColor(user.isActive ? .green: .secondary)
                            }
                        }
                    }
                    
                }
            .padding(2)
            .task {
                   await loadUserData()
            }
            .navigationTitle("FriendFace")
        }
}
    func loadUserData() async {
        
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601

            if let decodedResponse = try? decoder.decode([User].self, from: data) {
                self.users = decodedResponse
            }
        } catch {
            print("Invalid data")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
