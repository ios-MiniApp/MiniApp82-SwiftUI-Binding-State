//
//  ContentView.swift
//  MiniApp82-SwiftUI-Binding&State
//

import SwiftUI

struct ContentView: View {
    @State var str = "Hello, world!"
    @State var isShowNextView = false

    var body: some View {
        VStack {
            Text(str)
                .padding()
            Button("ボタン"){
                isShowNextView = true
            }
            .sheet(isPresented: $isShowNextView) {
                SecondView(isShowNextView: $isShowNextView)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
