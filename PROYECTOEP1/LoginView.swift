
import SwiftUI

struct LoginView: View {
    @State private var mostrar: Bool = false
    @State private var mostrarIndex: Bool = false
    @State private var user: String = ""
    @State private var password: String = ""
    @State private var mostrarAlert: Bool = false

    var body: some View {
        ZStack {
            Image("paste3")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer() // Espacio para centrar la vista

                Image("logo1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)

                TextField("Usuario", text: $user)
                    .padding(7)
                    .background(Color.white.opacity(0.9))
                    .keyboardType(.default) // Asegúrate de que el tipo de teclado sea el adecuado
                    .autocorrectionDisabled()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .font(.headline)
                    .onChange(of: user) { _ in
                        print("User ingresando: \(user)")
                    }

                SecureField("Contraseña", text: $password)
                    .padding(7)
                    .background(Color.white.opacity(0.9))
                    .keyboardType(.default) // Cambia según tus necesidades
                    .autocorrectionDisabled()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 15)
                    .padding(.horizontal, 50)
                    .padding(.bottom, 35)
                    .font(.headline)
                    .onChange(of: password) { _ in
                        print("Contraseña ingresando: \(password)")
                    }

                Button(action: {
                    mostrarAlert.toggle()
                }, label: {
                    Text("Ingresar")
                        .padding()
                        .background(Color.cafeclaro)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                })
                
                Spacer() // Espacio para empujar hacia arriba

                Button(action: {
                    mostrar.toggle()
                }, label: {
                    Text("No tienes cuenta?, Regístrate Aquí")
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                })
            }
            .sheet(isPresented: $mostrar) {
                RegistroView()
            }
            .alert(isPresented: $mostrarAlert) {
                Alert(title: Text("Atención!!!"),
                      message: Text("Confirmar su elección"),
                      primaryButton: .default(Text("Aceptar")) {
                          mostrarIndex.toggle()
                      },
                      secondaryButton: .destructive(Text("Cancelar")))
            }
            .fullScreenCover(isPresented: $mostrarIndex) {
                NavegacionView()
            }
        }
        .onAppear {
            // Enfocar el campo de texto automáticamente al aparecer la vista
            DispatchQueue.main.async {
                UITextField.appearance().becomeFirstResponder()
            }
        }
    }
}

#Preview {
    LoginView()
}
