//
//  PrincipalView.swift
//  samspro
//
//  Created by Ximena Tolentino on 17/09/24.
//

import SwiftUI
import AVKit
struct PrincipalView: View {
    var body: some View {
        NavigationView(){
            ZStack{
                Image("paste3").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    Spacer().frame(height: 20)
                    ZStack {
               
                        VideoPlayer(player: .init(url: Bundle.main.url(forResource: "kekes", withExtension: "mp4")!)) {
                        }
                        .frame(width: 320, height: 200) // Tamaño del video
                        .cornerRadius(20) // Esquinas del video curvadas
                    }
                    .padding(10)

                    //SALADO DULCE Y MÁS....
                    HStack(){
                        
                        NavigationLink(destination: SaladoView()){
                            Text("Salado")
                                .padding()
                                .background(.cafe3)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .shadow(radius: 12)
                                .font(.system(size: 15))
                        }
                        NavigationLink(destination: RecomendadoView()){
                            Text("Recomendado")
                                .padding()
                                .background(.cafe3)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .shadow(radius: 12)
                                .font(.system(size: 15))
                            
                        }
                        NavigationLink(destination: DulceView()){
                            Text("Dulce")
                                .padding()
                                .background(.cafe3)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .shadow(radius: 12)
                                .font(.system(size: 15))
                        }
                    } .frame(height: 60)
                    
                    // Segundo cuadro
                    HStack(spacing: 20) {
                        NavigationLink(destination: PedidoSelecView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 4)
                                    .frame(width: 150, height: 150)

                                Image("brownie")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(20)
                                    .shadow(radius: 30)
                            }
                        }
                        
                        NavigationLink(destination: PedidoSelecView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 4)
                                    .frame(width: 150, height: 150)

                                Image("galleta")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(20)
                                    .shadow(radius: 30)
                            }
                        }
                    }

                    HStack(spacing: 20) {
                        NavigationLink(destination: PedidoSelecView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 4)
                                    .frame(width: 150, height: 150)

                                Image("torta")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(20)
                                    .shadow(radius: 30)
                            }
                        }
                        
                        NavigationLink(destination: PedidoSelecView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 4)
                                    .frame(width: 150, height: 150)

                                Image("cupcake")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(20)
                                    .shadow(radius: 30)
                            }
                        }
                    }

                    
                   // Text("Te podría interesar")
                       // .font(.system(size: 20))
                        //.fontWeight(.bold)
                        //.foregroundColor(.cafe)
                    HStack(){
                        NavigationLink(destination: PedidoSelecView()) {
                            HStack {
                                Image("perfume")
                                    .resizable()
                                    .frame(width: 95, height: 65)
                                    .cornerRadius(10)
                                    .padding(.trailing, 10)
                                
                                VStack(alignment: .leading) {
                                    Text("Perfume")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text("Fragancia de frutos rojos")
                                        .font(.subheadline)
                                        .foregroundColor(.white)
                                }
                            }   .padding()
                                .background(Color.cafe3)
                                .cornerRadius(20)
                                .shadow(radius: 5)
                        
                        }
                       
                    } .padding(.top, 10)
                    
                    Spacer()
                    
                } //VSTACK
            }
            
        }.navigationBarBackButtonHidden(true)//NavigationViewk
    }
}
    
#Preview {
    PrincipalView()
}
