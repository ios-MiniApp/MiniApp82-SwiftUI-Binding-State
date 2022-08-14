//
//  SecondView.swift
//  MiniApp82-SwiftUI-Binding&State
//

import SwiftUI

struct SecondView: View {
    @Binding var isShowNextView: Bool

    var body: some View {
        ZStack{
            Color(.green)
                .ignoresSafeArea()
            VStack{
                Text("Hello, World!")
                Button("ボタン") {
                    isShowNextView = false
                }
            }
        }
    }
}

//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView(isShowNextView: <#Binding<Bool>#>)
//    }
//}
