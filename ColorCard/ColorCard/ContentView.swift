//
//  ContentView.swift
//  ColorCard
//
//  Created by Natalia Wcisło on 29/11/2019.
//  Copyright © 2019 Natalia Wcisło. All rights reserved.
//
import SwiftUI

struct ContentView: View {

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(1..<26) { number in
                    GeometryReader{ geometry in
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color("Color\(number)"))
                            .frame(width: 300, height: 300, alignment: .center)
                            .shadow(color: Color("Color\(number)"), radius: 10)
                            .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX)), axis: (x: 12, y: 10, z: 360))
                    }
                    .frame(width: 120, height: 300)
                .position(x: 200, y: 340)
                }
            }
           
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color("Color14"), .gray, .black]), center: .center, startRadius: 2, endRadius: 650))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
