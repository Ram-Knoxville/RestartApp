//
//  CircleGroupView.swift
//  RestartApp
//
//  Created by Ramiro Aguirre on 08/09/23.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTIES
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
            
        }//: ZStack
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
