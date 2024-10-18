//
//  InformacionView.swift
//  samspro
//
//  Created by Ximena Tolentino on 21/09/24.
//

import SwiftUI

struct InformacionView: View {
    var body: some View {
        ZStack {
            // Fondo de la pantalla
            Image("paste3")
                .resizable()
                .edgesIgnoringSafeArea(.all)
           

            VStack(spacing: 10) {
                // LOGO
                Image("logo1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230)
                    .padding(.top, 20)

                
                Text("¿Quiénes Somos?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                Text(
                "Somos Sam's Bakery nos apasiona la repostería personalizada. Ofrecemos postres únicos y especiales para cada ocasión, con detalles como flores, globos, y más. Nuestra misión es hacer que cada celebración sea inolvidable con productos de calidad y un toque personal.")
                    .font(.body)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 20)

                // IMAGEN DEL EQUIPO
                Image("equipo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                    .padding(5)
                
                //CONTACTO
                HStack(spacing: 10) {
                    // Icono de Gmail
                      Image(systemName: "envelope.fill")
                        .foregroundColor(.cafeclaro)
                Text("Contacto@samsbakery.com")
                    
                    }
                HStack(spacing: 10) {
                    // Icono de Gmail
                      Image(systemName: "map.fill")
                        .foregroundColor(.cafeclaro)
                Text("Av. caminos del inca 345 - Surco")
                    
                    }
                HStack(spacing: 10) {
                    // Icono de Gmail
                      Image(systemName: "phone.fill")
                        .foregroundColor(.cafeclaro)
                Text("(123)456-7890")
                    
                    }
                    

                Spacer()

                // Botón para contacto u otra acción
                /*Button(action: {
                    // Acción para contacto o navegación
                }) {
                    Text("Volver")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.cafeclaro)
                        .cornerRadius(10)
                }
                .padding(.bottom, 50)  // Añadir espaciado para el botón*/
            }
        }
    }
}

#Preview {
    InformacionView()
}
