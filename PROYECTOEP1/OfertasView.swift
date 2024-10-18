//
//  OfertasView.swift
//  samspro
//
//  Created by Ximena Tolentino on 21/09/24.
//


import SwiftUI

struct OfertasView: View {
    var body: some View {
        NavigationView(){
            //Image("ellie").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ZStack{
                Image("paste2").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                NavigationLink(destination:NavegacionView()){
                    Label("OFERTAS",systemImage: "")
                        .padding()
                        .frame(width: 150,height: 45)
                        .background(.cafe)
                        .cornerRadius(30)
                        .padding(.top,10)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    OfertasView()
}
