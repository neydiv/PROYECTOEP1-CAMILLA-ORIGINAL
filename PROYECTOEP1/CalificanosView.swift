import SwiftUI

struct CalificanosView: View {
    @State private var rating: Double = 0 // Valor de la calificación
    @State private var comment: String = "" // Comentario del usuario
    @State private var email: String = "" // Correo del usuario
    @State private var userComments: [String] = ["¡Excelente aplicación!", "Podría mejorar en algunos aspectos.", "Me encantó, muy útil."] // Comentarios de usuarios
    
    var body: some View {
        ZStack {
            // Imagen de fondo
            Image("paste3")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer(minLength: 50) // Espaciado superior
                
                // Título más arriba
                Text("Califícanos")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding(.top, 40)
                
                Spacer(minLength: 50) // Espaciado entre título y estrellas
                
                // Barra de estrellas, con tamaño más grande
                RatingView(rating: $rating)
                    .padding()
                
                Spacer(minLength: 30) // Espaciado entre estrellas y campo de correo

                // Campo de texto para ingresar el correo
                TextField("Agrega tu correo...", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding([.leading, .trailing], 20)
                
                // Campo de texto para comentarios, más arriba del medio
                TextField("Añade un comentario...", text: $comment)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding([.leading, .trailing], 20)
                
                // Botón para enviar la calificación
                Button(action: {
                    enviarCalificacion()
                }) {
                    Text("Enviar")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding()
                
                Spacer(minLength: 30) // Espaciado entre el botón y la lista de comentarios
                
                // Sección para mostrar los comentarios de otros usuarios
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        ForEach(userComments, id: \.self) { comment in
                            Text(comment)
                                .padding()
                                .background(Color(.systemGray5))
                                .cornerRadius(8)
                                .padding([.leading, .trailing], 20)
                        }
                    }
                }
                .frame(maxHeight: 200) // Limitar el tamaño de la lista de comentarios
                .padding(.bottom, 20) // Espacio para los comentarios de usuarios
            }
        }
    }
    
    // Función para manejar el envío de la calificación
    func enviarCalificacion() {
        if !comment.isEmpty && !email.isEmpty {
            userComments.append("\(comment) - \(email)") // Añadir el comentario del usuario a la lista junto con el correo
            comment = "" // Limpiar el campo de comentarios
            email = "" // Limpiar el campo de correo
        }
        print("Calificación enviada: \(rating)")
        print("Comentario enviado: \(comment)")
        print("Correo enviado: \(email)")
    }
}

// Vista personalizada para la barra de estrellas, con tamaño ajustado
struct RatingView: View {
    @Binding var rating: Double

    var body: some View {
        HStack {
            ForEach(0..<5) { index in
                Image(systemName: "star.fill")
                    .resizable() // Permitir cambiar el tamaño de las estrellas
                    .frame(width: 40, height: 40) // Tamaño más grande para las estrellas
                    .foregroundColor(index < Int(rating) ? .yellow : .gray)
                    .onTapGesture {
                        rating = Double(index + 1)
                    }
            }
        }
    }
}

struct CalificanosView_Previews: PreviewProvider {
    static var previews: some View {
        CalificanosView()
    }
}
