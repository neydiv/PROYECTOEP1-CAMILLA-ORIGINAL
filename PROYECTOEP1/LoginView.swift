
//
//  LoginView.swift
//  semana4
//
//  Created by alumno on 23/09/24.
//

import SwiftUI

struct LoginView: View {
    @State var mostrar: Bool = false
    @State var mostrarIndex: Bool = false
    @State var user: String = ""
    @State var apellido: String = ""
    @State var password: String = ""
    @State var mostrarAlert: Bool = false
    var body: some View {
        ZStack() {
            Image("paste3")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Spacer()//AGREGO SPACER PARA QUE SE UBIQUE AL MEDIO
                Image("logo1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                TextField("Usuario", text: $user)
                    .padding(7)
                    .background(.white .opacity(0.9))
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                //.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .font(.headline)
                    .onChange(of: user, perform:{ value in
                        print("User ingresando")
                    })
                
    
                SecureField("Contraseña", text: $password)
                    .padding(7)
                    .background(.white .opacity(0.9))
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                 //   .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .padding(.bottom,35)
                    .font(.headline)
                    .onChange(of: password, perform:{ value in
                        print("\(password)")
                    })
                Button(action: {
                                    //accion
                                    mostrarIndex.toggle()
                                    //mostrarIndex.toggle()
                                }, label: {
                                    Text("Ingresar")
                                        .padding()
                                        .background(Color.cafeclaro)
                                        .foregroundColor(.white)
                                        .cornerRadius(15)
                                        .shadow(radius: 5)
                                })
                
               Spacer()//AGREGO SPACER PARA EMPUJAR HACIA ARRIBA
                
                Button(action: {
                    //accion
                    mostrar.toggle()
                }, label: {
                    Text("No tienes cuenta?, Registrate Aquí")
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                })
            
                
                //shhet es un modifayer
                //sheet es una ventana(vista)
                //textfield el texto q queremos
            }.sheet(isPresented: $mostrar, content: {
                RegistroView()
            }).alert(isPresented: $mostrarAlert, content: {
                Alert(title: Text("Atencion!!!"),
                      message: Text("Confirmar su eleccion"),
                      primaryButton:
                        .default(Text("Aceptar"), action: {mostrarIndex.toggle()}),
            
                      secondaryButton: .destructive(Text("Cancelar")))
            })
            .fullScreenCover(isPresented: $mostrarIndex, content: {
                NavegacionView()
            })
        }
    }
}

#Preview {
    LoginView()
}
