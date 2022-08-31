//
//  ContentView.swift
//  H4XDR News
//
//  Created by Samat Musaev on 25/8/22.
//

import SwiftUI

struct ContentView: View {
    
    

    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) {post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("H4X0R NEWS")
        }.onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



