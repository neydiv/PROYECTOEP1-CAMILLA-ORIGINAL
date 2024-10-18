//
//  RegalosView.swift
//  samspro
//
//  Created by Ximena Tolentino on 21/09/24.
//

import SwiftUI

struct RegalosView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Fondo de la pantalla
                Image("fondoregalo")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)
                    .navigationTitle("Regalos Destacados")
                VStack(spacing: 50) {
                    Spacer().frame(height: 10)
                    
                    //REGALOS BOTONOESS
                    VStack(spacing: 50) {
                        NavigationLink(destination: PedidoSelecView()) {
                            //dentro de un HSTACK para que sea horizontal
                            HStack() {
                                Image("rosas")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                                VStack() {
                                    Text("Rosas")
                                        .font(.title2)
                                    
                                    Text("Rosas frescas.")
                                        .font(.body)
                                        .foregroundColor(.black)  
                                }
                            }//HSTACK acaba
                        }
                        
                       
                        NavigationLink(destination: PedidoSelecView()) {
                            HStack() {
                                Image("peluche")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                                VStack() {
                                    Text("Peluche")
                                        .font(.title2)
                                    
                                    Text("Un osito suave")
                                        .font(.body)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        
                        NavigationLink(destination: PedidoSelecView()) {
                            HStack() {
                                Image("vino")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                                VStack() {
                                    Text("Vino")
                                        .font(.title2)
                
                                    Text("Vino tinto añejo")
                                        .font(.body)
                                        .foregroundColor(.black)
                                }
                                
                            }
                            
                        }
                    }
                    Spacer()
                    
                    
                }
            }
            
        }
    }
}

#Preview {
    RegalosView()
}
