//
//  AjustesView.swift
//  samspro
//
//  Created by Ximena Tolentino on 22/09/24.
//

import SwiftUI

struct AjustesView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("paste3")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    // Título de Ajustes
                    Text("Ajustes")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()

                    // AÑADIMOS LA LISTA
                    List {
                        HStack {
                            NavigationLink(destination: HistorialView()) {
                                Text("Perfil")
                            }
                        }
                        
                        NavigationLink(destination: CuponesView()) {
                            Text("Configuración de privacidad")
                        }
                        
                        NavigationLink(destination: MetododepagoView()) {
                            Text("Notificaciones")
                        }
                        
                        NavigationLink(destination: CalificanosView()) {
                            Text("Tiempo en pantalla")
                        }
                        NavigationLink(destination: CalificanosView()) {
                            Text("Teléfono")
                        }
                        NavigationLink(destination: CalificanosView()) {
                            Text("Visualización")
                        }
                        NavigationLink(destination: CalificanosView()) {
                            Text("Visítanos")
                        }
                        NavigationLink(destination: CalificanosView()) {
                            Text("Ajustes de Tarjeta")
                        }
                        NavigationLink(destination: CalificanosView()) {
                            Text("Infórmanos")
                        }
                    }
                    .scrollContentBackground(.hidden) // PARA QUE EL FONDO SEA TRANSPARENTE
                    .background(Color.clear)
                }
            }
        }
    }
}

#Preview {
    AjustesView()
}
