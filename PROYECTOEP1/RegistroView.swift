//
//  RegistroView.swift
//  samspro
//
//  Created by Ximena Tolentino on 17/09/24.
//


//ZStack sirve para que la imagen se vea de fondo en toda la pantalla

//VStack sirve para poner contenido en vertical

//HStack sirve para poner contenido en horizontal


import SwiftUI


struct RegistroView: View {
    @State var mostrar: Bool = false
    @State var mostrarIndex: Bool = false
    @State var user: String = ""
    @State var apellido: String = ""
    @State var password: String = ""
    @State var copipassword: String = ""
    @State var numero: String = ""
    @State var Correo: String = ""
    @State var mostrarAlert: Bool = false
    var body: some View {
        ZStack() {
            Image("paste3")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(){
                Image("logo1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
            
                TextField("Nombres", text: $user)
                    .padding(7)
                    .background(.white .opacity(0.9))
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .font(.headline)
                    .onChange(of: user, perform:{ value in
                        print("User ingresando")
                    })
                
                TextField("Apellidos", text: $apellido)
                    .padding(7)
                    .background(.white .opacity(0.9))
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                    
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
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .font(.headline)
                    .onChange(of: user, perform:{ value in
                        print("User ingresando")
                    })
                
                SecureField("Confirmar contraseña", text: $copipassword)
                    .padding(7)
                    .background(.white .opacity(0.9))
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .font(.headline)
                    .onChange(of: user, perform:{ value in
                        print("User ingresando")
                    })
                TextField("Numero de telefono", text: $numero)
                    .padding(7)
                    .background(.white .opacity(0.9))
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .font(.headline)
                    .onChange(of: user, perform:{ value in
                        print("User ingresando")
                    })
                
                TextField("Correo electronico", text: $Correo)
                    .padding(7)
                    .background(.white .opacity(0.9))
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .padding(.bottom,35)
                    .font(.headline)
                    .onChange(of: user, perform:{ value in
                        print("User ingresando")
                    })
                
                
                Button(action: {
                    //accion
                    mostrarAlert.toggle()
                    //mostrarIndex.toggle()
                }, label: {
                    Text("Registrarme")
                        .padding()
                        .background(Color.cafeclaro)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                })

                //shhet es un modifayer
                //sheet es una ventana(vista)
                //textfield el texto q queremos
            }.sheet(isPresented: $mostrar, content: {
                RegistroView()
            }).alert(isPresented: $mostrarAlert, content: {
                Alert(title: Text("Realizado con exito"),
                      message: Text("Usted se acaba de registrar"),
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
    RegistroView()
}
