//
//  ContentView.swift
//  Seating
//
//  Created by Maya Fenelon on 2/16/20.
//  Copyright © 2020 Maya Fenelon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var studentName = ""
    @ObservedObject var seatingManager = SeatingManager()
    @State var visual = true
    
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            HStack{
                Spacer()
                Text("Formal Dinner Seating")
                    .font(.system (size: 35))
                Spacer()
            }
            
            HStack{
                Spacer()
                TextField("Search Name Here", text: $studentName, onCommit: {
                    if self.studentName == "" {
                        //if nothing is typed then user is told to type something
                        self.studentName = "Type Something"
                    }else{
                        self.seatingManager.fetchingTable(name: self.studentName)
                        self.studentName = "" 
                    }
                })
                    .font(.system (size: 25))
                    .border(Color.black, width: 2)
                    .autocapitalization(.words)
                    .aspectRatio(30, contentMode: .fit)
                    .frame(maxWidth: 500, maxHeight: 150)
                
                Spacer()
                
                Button(action: {
                    print("Working")
                    if self.studentName == "" {
                        //if nothing is typed then user is told to type something
                        self.studentName = "Type Something"
                    }else{
                        self.seatingManager.fetchingTable(name: self.studentName)
                        self.studentName = ""
                    }
                    
                }) {
                    Text("Search")
                        .font(.system (size: 30))
                }
                Spacer()
            }
            
            VStack{
                Spacer()
                Text("Name 1")
                    //Text(SeatingManager.studentOne) not working
                    .font(.system (size: 30))
                Spacer()
                Text("Name 2")
                    .font(.system (size: 30))
                Spacer()
            }
            HStack{
                Spacer()
                VStack{
                    Text("Name 3")
                        .font(.system (size: 30))
                    Spacer()
                    Text("Name 4")
                        .font(.system (size: 30))
                    Spacer()
                    Text("Name 5")
                        .font(.system (size: 30))
                }
                Spacer()
                ZStack{
                    Circle()
                        .foregroundColor(.blue)
                    Text("Table Number:")
                        .font(.system (size: 30))
                }
                VStack{
                    Text("Name 6")
                        .font(.system (size: 30))
                    Spacer()
                    Text("Name 7")
                        .font(.system (size: 30))
                    Spacer()
                    Text("Name 8")
                        .font(.system (size: 30))
                }
                Spacer()
            }
            VStack{
                Text("Name 9")
                    .font(.system (size: 30))
                Spacer()
                Text("Optional name 10")
                    .font(.system (size: 30))
                Spacer()
            }
            Spacer()
        }
            
        .background(
            Color(.lightGray)
                .edgesIgnoringSafeArea(.all))
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
