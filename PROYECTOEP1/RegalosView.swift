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
                    
                    // REGALOS BOTONES
                    VStack(spacing: 20) {
                        NavigationLink(destination: PedidoSelecView()) {
                            // dentro de un HSTACK para que sea horizontal
                            HStack {
                                Image("rosas")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text("Rosas")
                                        .font(.title2)
                                    
                                    Text("Rosas frescas.")
                                        .font(.body)
                                        .foregroundColor(.black)
                                }
                            }
                            .padding()
                            .background(Color.gray.opacity(0.4))
                            .cornerRadius(20)
                            .shadow(radius: 5) // HSTACK acaba
                        }
                        
                        NavigationLink(destination: PedidoSelecView()) {
                            HStack {
                                Image("peluche")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text("Peluche")
                                        .font(.title2)
                                    
                                    Text("Un osito suave")
                                        .font(.body)
                                        .foregroundColor(.black)
                                }
                            }
                            .padding()
                            .background(Color.gray.opacity(0.4))
                            .cornerRadius(20)
                            .shadow(radius: 5)
                        }
                        
                        NavigationLink(destination: PedidoSelecView()) {
                            HStack {
                                Image("vino")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text("Vino")
                                        .font(.title2)
                                    
                                    Text("Vino tinto añejo")
                                        .font(.body)
                                        .foregroundColor(.black)
                                }
                            }
                            .padding()
                            .background(Color.gray.opacity(0.4))
                            .cornerRadius(20)
                            .shadow(radius: 5)
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
