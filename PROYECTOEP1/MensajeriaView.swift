//
//  Mensajeria.swift
//  samspro
//
//  Created by Ximena Tolentino on 22/09/24.
//


import SwiftUI

struct MensajeriaView: View {
    var body: some View {
        ZStack{
            Image("paste2").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Mensajería")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                List {
                    HStack {
                        Image("daemond")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 110, height: 120)
                            .clipShape(Circle())                        //.padding(.bottom, 20)
                        VStack(alignment: .leading){
                            Text("Repartidor daniel")
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                    }
                    
                    HStack {
                        Image("amor")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 110, height: 120)
                            .clipShape(Circle())                        //.padding(.bottom, 20)
                        VStack(alignment: .leading){
                            Text("Repartidor john")
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                    }
                    
                    HStack {
                        Image("paul")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 110, height: 120)
                            .clipShape(Circle())                        //.padding(.bottom, 20)
                        VStack(alignment: .leading){
                            Text("Repartidor paul")
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                    }
                    
                    HStack {
                        Image("ellie")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 110, height: 120)
                            .clipShape(Circle())                        //.padding(.bottom, 20)
                        VStack(alignment: .leading){
                            Text("Repartidora ellie")
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                    }              }
                .scrollContentBackground(.hidden) //PARA QUE EL FONDO SEA TRANSPARENTE
                .background(Color.clear) //
             
            }
        }
    }
}

#Preview {
   MensajeriaView()
}
