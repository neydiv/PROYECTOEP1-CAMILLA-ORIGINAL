//
//  MetododepagoView.swift
//  PROYECTOEP1
//
//  Created by alumno on 23/09/24.
//

import SwiftUI

struct MetododepagoView: View {
    var body: some View {
        ZStack {
            // Fondo de la pantalla
            Image("paste3")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.2) // Un poco de opacidad para no sobrecargar el fondo visualmente
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Método de pago")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 40)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // Detalle de los métodos de pago
                VStack(spacing: 15) {
                    HStack {
                        Image(systemName: "creditcard.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                        Text("Tarjeta de crédito")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    
                    HStack {
                        Image(systemName: "banknote.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.green)
                        Text("Transferencia bancaria")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    
                    HStack {
                        Image(systemName: "applelogo")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Text("Apple Pay")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)

                    // Nueva opción Yape
                    HStack {
                        Image("yape-logo") // Cambia "yape-logo" por el nombre de la imagen que uses
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Yape")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                }
                .padding(.horizontal)
                
                Spacer()
                
                // Botón de Confirmar Compra
                Button(action: {
                    // Acción del botón
                }) {
                    Text("Confirmar Pago")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color.blue)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
            }
            .padding()
        }
    }
}

#Preview {
    MetododepagoView()
}
