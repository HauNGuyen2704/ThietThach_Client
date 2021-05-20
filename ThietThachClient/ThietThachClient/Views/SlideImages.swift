//
//  SlideImages.swift
//  ThietThachClient
//
//  Created by Hau Nguyen on 18/05/2021.
//

import SwiftUI

struct SlideImages: View {
    private var numberOfImage = 3
    private var imageNumber = ["h1", "h2", "h3"]
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    @State private var currentIndex = 0
    
    var body: some View {
        GeometryReader{ proxy in
            TabView(selection: $currentIndex){
                ForEach(0..<numberOfImage){ num in
                    Image("\(imageNumber[num])")
                        .resizable()
                        .scaledToFill()
                        .overlay(Color.black.opacity(0.4))
                        .tag(imageNumber)
                        .frame(minWidth: 80, idealWidth: proxy.size.width, maxWidth: proxy.size.width,
                               minHeight: 80, idealHeight: proxy.size.height, maxHeight: proxy.size.height, alignment: .center)
                }
            }.tabViewStyle(PageTabViewStyle())
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .padding()
            .frame(width: proxy.size.width, height: proxy.size.height / 1)
            .onReceive(timer, perform: { _ in
                // code
                currentIndex = currentIndex < numberOfImage ? currentIndex + 1 : 0
            })
        }
    }
}

struct SlideImages_Previews: PreviewProvider {
    static var previews: some View {
        SlideImages()
    }
}
