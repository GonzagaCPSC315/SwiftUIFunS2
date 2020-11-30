//
//  ContentView.swift
//  SwiftUIFunS2
//
//  Created by Gina Sprint on 11/30/20.
//

import SwiftUI

// MARK: - SwiftUI
// a "declarative" framework for building UIs for Apple devices (iOS, ipadOS, macOS, ...)
// the "replacement" for the old way of building UIs (UIKit/IB/storyboarding)
// there are major differences/improvements from UIKit to Swift UI, take a look here for more details https://goshdarnswiftui.com/
// SwiftUI was released with iOS 13 and Xcode 11

// UIKit used the MVC design pattern, SwiftUI uses MVVM (model-view-view model)
// SwiftUI uses a "reactive" UI paradigm
// views as a dashboard to underlying app state where the views are bound to the state

// demos
// 1. TextField, Button, and an Alert (like AlertFun)
// 2. TextField, a Button, a "segue", and a second screen (like MultipleViewControllersFun)
// 3. 3x3 grid of Buttons that fill the available screen space (like AutoLayoutFun)
// 4. List of dogs (like TableViewFun)

struct ContentView: View {
    @State var userString: String = ""
    @State var alertIsVisible: Bool = false
    // @State means this is a property that is always synchonrized with a View
    // e.g. TextField's text is userString (it can read/write to it)
    
    // body is a computed property
    var body: some View {
        // padding() is an example of a modifer
        // a modifier is method that customizes the View and returns the View... so we can chain modifiers together
//        return Text("Hello, Monday!!!")
//            .font(.largeTitle)
//            .padding()
//            .foregroundColor(Color.green)
//            .background(Color.yellow)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
        VStack(alignment: .center, spacing: 16, content: {
            TextField("Enter any value to echo back", text: $userString)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                print("button tapped")
                alertIsVisible = true
            }, label: {
                Text("Echo Back")
            })
            .alert(isPresented: $alertIsVisible, content: {
                Alert(title: Text("Echo Back"), message: Text(userString), dismissButton: .default(Text("Okay"), action: {
                    userString = ""
                }))
            })
            Spacer() // fills available space
        })
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
