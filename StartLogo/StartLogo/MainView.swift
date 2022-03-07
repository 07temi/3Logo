//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    @State private var logoAnimation = false
    
    @State private var angle = 0.0
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                }
            }
            Spacer()
            if showAward {
                MyLogo()
                    .frame(width: 250, height: 250)
                    .transition(.transition)
                    .rotation3DEffect(.degrees(angle), axis: (x: 0, y: 1, z: 0))
                    .animation(.easeOut.speed(0.3).repeatCount(1, autoreverses: false))
                    .onTapGesture {
                        if !logoAnimation {
                            angle = 720
                            logoAnimation.toggle()
                        } else {
                            angle = 0
                            logoAnimation.toggle()
                        }
                    }
            }
            Spacer()
            
        }
        .font(.headline)
        .padding()
    }
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}

extension AnyTransition {
    static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
