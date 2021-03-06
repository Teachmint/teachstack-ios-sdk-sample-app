//
//  MyLiveClass.swift
//  ios-sdk-demo-app
//
//  Created by Divya Aggarwal on 03/03/22.
//

import Foundation
import SwiftUI


struct MyLiveClass:View{
    let customLink = "https://video.teachmint.com/videoroom/evaas::testing/coteacher234/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb29tX2lkIjoiZXZhYXM6OnRlc3RpbmciLCJ1aWQiOiJjb3RlYWNoZXIyMzQiLCJ1bmFtZSI6ImNvLXRlYWNoZXIxIiwidXR5cGUiOjExLCJleHAiOjE2NTQ4OTM5ODN9.k3P6uYxgEUC3RFfN-sPFlfstVn84LFdXU7_Y1shvMTA"
    @State var input = ""
    @State var isLinkClicked : Bool = false
    @State var destination : AnyView? = nil
    var body:some View{
        VStack(alignment:.leading){
            header
            textFieldView
            customView
            button
            NavigationLink(destination: destination ,isActive: $isLinkClicked){EmptyView()}
        }.padding(.horizontal,20).frame(maxWidth:.infinity,maxHeight: .infinity)
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
    
    var header:some View{
        Text("Please Enter the URL").font(.title2).foregroundColor(.gray)
    }
  
    var textFieldView:some View{
        HStack{
            TextField("Enter URL", text: $input).padding(.trailing,8).foregroundColor(.gray)
            Image(systemName: "xmark").imageScale(.medium).foregroundColor(.blue).onTapGesture {
                self.input = ""
            }
        }.padding(8).overlay(
            RoundedRectangle(cornerRadius:8)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
    
    var customView:some View{
        HStack{
            Spacer()
            Text("Use Custom Link").foregroundColor(.blue).onTapGesture {
                self.input = customLink
            }
        }
    }
    
    var button:some View{
        Text("Go Live").font(.title3).foregroundColor(.white).padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)).frame(maxWidth:.infinity,alignment: .center).background(Color.blue).cornerRadius(8).padding()
            .onTapGesture {
                print(input)
                self.destination =  AnyView(SdkView(url:input))
                self.isLinkClicked = true
            }

    }
    
}
