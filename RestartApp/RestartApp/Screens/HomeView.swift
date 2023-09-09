//
//  HomeView.swift
//  RestartApp
//
//  Created by Ramiro Aguirre on 08/09/23.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding")  var isOnBoardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            // MARK: - HEADER
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
                .offset(y: isAnimating ? 35 : -35)
                .animation(
                    Animation
                        .easeInOut(duration: 4)
                        .repeatForever(),
                    value: isAnimating
                )
            } //: ZSTACK
            
            // MARK: - CENTER
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - FOOTER
            
            Spacer()
            
            Button {
                withAnimation {
                    playSound(sound: "success", type: "m4a")
                    isOnBoardingViewActive = true
                }
            }label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            } //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }//: VStack
        .onAppear {
            DispatchQueue.main.asyncAfter(
                deadline: .now() + 0.5,
                execute: {isAnimating = true}
            )
        }
        .preferredColorScheme(.dark)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
