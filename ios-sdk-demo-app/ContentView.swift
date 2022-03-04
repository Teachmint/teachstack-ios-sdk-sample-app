//
//  ContentView.swift
//  ios-sdk-demo-app
//
//  Created by Divya Aggarwal on 03/03/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
               myView
        }
    }
    
    var myView:some View{
        VStack{
            Image("SplashLogo").scaledToFit()
            Spacer()
            NavigationLink(destination:MyLiveClass()){ button }
            Spacer()
        }.padding().frame(maxWidth:.infinity,maxHeight: .infinity)
    }
    
    var button:some View{
        Text("Click to start the demo").font(.title3).foregroundColor(.white).padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)).frame(maxWidth:.infinity,alignment: .center).background(Color.blue).cornerRadius(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
