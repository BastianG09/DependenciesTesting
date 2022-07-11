//
//  ContentView.swift
//  DependenciesTesting
//
//  Created by BastianC on 7/3/22.
//

import SwiftUI
import ToastUI
 
struct ContentView: View {
    @State private var showToast = false
 
    var body: some View {
        VStack {
            Spacer()
            Button {
                showToast = true
            } label: {
              Text("Show Toast")
                .bold()
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(5.0)
            }
            .padding()
        }
        .toast(isPresented: $showToast, dismissAfter: 1.0) {
            ToastView {
                Text("This is a toast 🍞!")
            }
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
