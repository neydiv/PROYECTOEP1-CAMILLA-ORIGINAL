//
//  CuponesView.swift
//  PROYECTOEP1
//
//  Created by alumno on 23/09/24.
//

import SwiftUI

struct CuponesView: View {
    var body: some View {
        ZStack{
            Image("paste2").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("Cupones")
        }
    }
}

#Preview {
    CuponesView()
}
