import SwiftUI
import MapKit
import CoreLocation

struct IdentifiableLocation: Identifiable {
    var id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct UbicacionView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // Coordenadas iniciales
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    @StateObject private var locationManager = LocationManager()
    @State private var selectedLocation: IdentifiableLocation? // Para almacenar la ubicación seleccionada
    @State private var isNavigating: Bool = false // Estado para la navegación

    var body: some View {
        NavigationView {
            ZStack {
                // Mapa
                Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: selectedLocation != nil ? [selectedLocation!] : []) { location in
                    MapPin(coordinate: location.coordinate, tint: .blue) // Muestra el pin en la ubicación seleccionada
                }
                .edgesIgnoringSafeArea(.all)
                .gesture(
                    TapGesture()
                        .onEnded { _ in
                            // Obtener la ubicación tocada en el mapa
                            let coordinate = region.center // Usamos el centro de la región como ejemplo
                            selectedLocation = IdentifiableLocation(coordinate: coordinate) // Almacena la ubicación seleccionada
                        }
                )
                .onAppear {
                    if let location = locationManager.location {
                        region.center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
                    }
                }
                
                VStack {
                    Spacer()
                    NavigationLink(destination: MetodoPagoView(), isActive: $isNavigating) {
                        Button(action: {
                            if selectedLocation != nil {
                                isNavigating = true // Navega a la vista de pago si hay una ubicación seleccionada
                            }
                        }) {
                            Text("Confirmar Selección")
                                .foregroundColor(.white)
                                .padding()
                                .background(selectedLocation != nil ? Color.blue : Color.gray) // Cambia el color según la selección
                                .cornerRadius(8)
                        }
                        .disabled(selectedLocation == nil) // Desactiva el botón si no hay selección
                        .padding(.bottom, 20)
                    }
                }
            }
            .navigationBarTitle("Ubicación", displayMode: .inline)
        }
    }
}

// Clase para gestionar la ubicación
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private var locationManager = CLLocationManager()
    @Published var location: CLLocation?

    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.location = locations.last
    }
}

struct MetodoPagoView: View {
    var body: some View {
        Text("Método de Pago")
            .font(.largeTitle)
            .padding()
    }
}

struct UbicacionView_Previews: PreviewProvider {
    static var previews: some View {
        UbicacionView()
    }
}
