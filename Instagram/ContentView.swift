//
//  ContentView.swift
//  Instagram
//
//  Created by Rafal Pawelec on 20/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            
            
            Divider()
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 0.0) {
                    Stories()
                    Post(image: "profile2")
                    Post(image: "dog", description: "I love her, almost 2 years old")
                    
                }
            }
            TabBar()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack() {
            Image("logo")
            Spacer()
            HStack(spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
            
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    
    var image: String = "profile"
    var name: String = "Willie Yam"
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                Story(image: "profile", name: "Willie Yam")
                Story(image: "profile2", name: "Meng To")
                Story(image: "profile3", name: "Akson")
                Story(image: "profile4", name: "Steph Diep")
                Story(image: "profile5", name: "Sam Aing")
                Story(image: "profile6", name: "Dara To")
                Story(image: "profile7", name: "Sourany")
                Story(image: "profile8", name: "Pom")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text("Willie Yam")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var image: String = "profile"
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                HStack(spacing: 10.0) {
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                
                Spacer()
                
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct Post: View {
    var image: String = "profile"
    var description: String = "I miss traveling to Japan"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            
            PostContent(image: image)
            
            Text("Liked by Meng To and others")
                .font(.footnote)
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal, 12)
            
            HStack {
                HStack(spacing: 7.0) {
                    Image("profile")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack(alignment: .center) {
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Divider()
            
            HStack {
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21, alignment: .center)
                    .cornerRadius(50)
            }
            .padding(.top, 10)
            .padding(.horizontal, 25)
        }
    }
}
