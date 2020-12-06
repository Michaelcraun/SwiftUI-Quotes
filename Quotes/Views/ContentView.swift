//
//  ContentView.swift
//  Quotes
//
//  Created by Michael Craun on 4/28/20.
//  Copyright © 2020 Craunic Productions. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var quotes: [Quote]
    
    var body: some View {
        VStack {
            CircleImage()
                .frame(width: 160, height: 160)
                .padding(.top, 20)
                .padding(.bottom, 20)
            MainView(quotes: quotes)
            Spacer()
        }.background(Image("motivation_bg")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all))
    }
}

struct MainView: View {
    var quotes: [Quote]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(quotes.count) Quotes Available")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.orange)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(quotes, id: \.name) { quote in
                        VStack {
                            CircleImage()
                            Text("\"\(quote.quote)\"")
                                .font(.headline)
                                .padding()
                            
                            Divider()
                            Text("By - \(quote.name)")
                                .italic()
                                .font(.custom("Helvetica neue", size: 14))
                        }.frame(width: 300, height: 300)
                            .foregroundColor(.gray)
                            .padding(.all, 4)
                            .background(Color.white)
                            .cornerRadius(13)
                            .overlay(Rectangle()
                                .fill(LinearGradient(
                                    gradient: Gradient(
                                        colors: [.clear, .pink]),
                                        startPoint: .center,
                                        endPoint: .topLeading))
                                .clipped()
                                .shadow(radius: 8))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(quotes: quoteData)
    }
}
