//
//  DetailView.swift
//  H4XDR News
//
//  Created by Samat Musaev on 25/8/22.
//

import SwiftUI

struct DetailView: View {
    let url:String?
    
    var body: some View {
        if let url = url {
           WebView(urlString: url)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


