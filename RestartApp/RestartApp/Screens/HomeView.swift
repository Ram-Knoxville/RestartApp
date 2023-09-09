//
//  HomeView.swift
//  RestartApp
//
//  Created by Ramiro Aguirre on 08/09/23.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding")  var isOnBoardingViewActive: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button {
                isOnBoardingViewActive = true
            }label: {
                Text("Restart")
            }
            .buttonStyle(.borderedProminent)
        }//: VStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
