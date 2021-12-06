//
//  ContentView.swift
//  Bulldogs now
//
//  Created by TERRYNE HARRIS on 12/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.purple.edgesIgnoringSafeArea(.all)
            ZStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 25){
                    
                    VStack(alignment: .leading, spacing: 10){
                        
                        Image("user")
                        .resizable()
                              .frame(width: 65, height: 65)
                        
                        
                        Text("LHS")
                            .fontWeight(.bold)
                            .foregroundColor(.purple )
                    }
                    .padding(.bottom, 50 )
                    
                    List(data){ i in
                        Button(action: {
                            
                        }){
                            HStack {
                                Image(systemName: i.icon)
                                    .foregroundColor(Color.white)
                                
                                Text(i.name)
                                    .padding(.leading)
                                    .foregroundColor(.white)
                            } .padding(.vertical)
                        }.onAppear()
                         
                    }
                    
                    ZStack(alignment: .topTrailing) {
                        Home()
                            .scaleEffect(0.8)
                            .offset(x:UIScreen.main.bounds.width - 100)
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        VStack {
            ZStack {
                HStack{
                    Button(action: {
                        
                    }) {
                        Image("menu")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                Text("Bulldogs Now")
                    .fontWeight(.bold)
                    .font(.title)
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            
            Spacer()
            
            Text("Your Content")
            
            Spacer()
        }
        .background(Color.white)
        .cornerRadius(20)
        
    }
}

var data = [
    Menu(name: "Announcement", icon: "newspaper"),
    Menu(name: "HopeSquad", icon: "sun.max"),
    Menu(name: "Resources", icon: "folder"),
    Menu(name: "Student Info", icon: "info.cirlce"),
    Menu(name: "Sports & Clubs", icon: "person.3"),
    Menu(name: "Photos", icon: "camera.on.rectangle"),
    Menu(name: "Help & Feedback", icon: "archivebox.fill"),
    Menu(name: "Teacher info", icon: "info.cirlce.fill"),
]

struct Menu: Identifiable{
     
    var id = UUID()
    var name: String
    var icon: String
    
    
}

