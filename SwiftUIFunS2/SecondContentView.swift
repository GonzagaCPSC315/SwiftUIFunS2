//
//  SecondContentView.swift
//  SwiftUIFunS2
//
//  Created by Gina Sprint on 12/7/20.
//

import SwiftUI

struct SecondContentView: View {
    var username: String
    @Binding var secondViewShowing: Bool
    
    // task: add a button that when pressed sets
    // secondViewShowing to false (dismisses this view)
    
    var body: some View {
        VStack {
            if username != "" {
                Text("Welcome, \(username)")
            }
            else {
                Text("Welcome, Anonymous")
            }
            Button(action: {
                secondViewShowing = false
            }, label: {
                Text("Log Out")
            })
        }
    }
}
