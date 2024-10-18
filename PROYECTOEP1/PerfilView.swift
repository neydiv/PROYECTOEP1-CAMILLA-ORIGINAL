//
//  PerfilView.swift
//  samspro
//
//  Created by Ximena Tolentino on 21/09/24.
//

import SwiftUI

struct PerfilView: View {
    @State var mostrarPrincipal: Bool = false
    @State var mostrarAlert: Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                Image("paste3")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Image("ellie")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                            .cornerRadius(20)
                            .navigationTitle("Perfil")
                        
                    }
                    
                    Text("Ellie Williams ")
                        .font(.system(size: 26, weight: .bold, design: .rounded))
                    
                    //AÑADIMOS LOS BOTONES
                    HStack{
                        
                        NavigationLink(destination: FavoritosView()){
                            Image(systemName: "heart.circle.fill")
                                .padding()
                                .background(.brown)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .font(.system(size: 35))
                        }
                        NavigationLink(destination: MensajeriaView()) {
                            Image(systemName: "message.circle.fill")
                                .padding()
                                .background(.brown)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .font(.system(size: 35))
                        }
                        
                        
                        NavigationLink(destination: AjustesView()){
                            Image(systemName: "gearshape.fill")
                                .padding()
                                .background(.brown)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .font(.system(size: 35))
                        }
                    } .frame(height: 70)
                    
                    // AÑADIMOS LA LISTA
                    List {
                        HStack {
                            NavigationLink(destination: HistorialView ()) {
                                Text("Historial de compras")
                            }
                        }
                        
                        NavigationLink(destination: CuponesView ()) {
                            Text("Cupones")
                        }
                        
                        NavigationLink(destination: MetododepagoView ()) {
                            Text("Metodo de Pago")
                        }
                        
                        NavigationLink(destination: CalificanosView ()) {
                            Text("Calificanos")
                        }
                    }
                    .scrollContentBackground(.hidden) //PARA QUE EL FONDO SEA TRANSPARENTE
                    .background(Color.clear) //
                    
                    Button(action: {
                                        //accion
                        mostrarAlert.toggle()
                                        //mostrarIndex.toggle()
                                    }, label: {
                                        Text("Cerrar Sesión")
                                            .padding()
                                            .background(Color.cafeclaro)
                                            .foregroundColor(.white)
                                            .cornerRadius(15)
                                            .shadow(radius: 5)
                                    }).padding(.bottom, 50)
                    
                    Spacer()
                    
            
                }.alert(isPresented: $mostrarAlert, content: {
                    Alert(title: Text("Cerrar Sesión"),
                          message: Text("¿Estas seguro que quieres cerrar sesion..?"),
                          primaryButton: .default(
                            Text("Aceptar"),
                            action: {
                                //code
                                mostrarPrincipal.toggle()
                            }),
                          secondaryButton: .destructive(Text("Cancelar")))
                })
                .fullScreenCover(isPresented: $mostrarPrincipal, content: {
                    LoginView()}) // VStack
                
                .navigationBarBackButtonHidden(true)
                
            } //ZStack
        } //NavigationView
    }
}

#Preview {
    PerfilView()
}
