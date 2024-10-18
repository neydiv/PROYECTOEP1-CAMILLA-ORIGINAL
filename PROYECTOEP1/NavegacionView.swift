//
//  NavegacionView.swift
//  samspro
//
//  Created by Ximena Tolentino on 20/09/24.
//

import SwiftUI
struct NavegacionView: View {
    var body: some View {
        NavigationView(){
        //para los iconos de navegacion
            
            TabView(){
                
                PrincipalView()
                    .tabItem { Image(systemName: "house") }
                
                RegalosView()
                    .tabItem { Image(systemName: "gift") }
                
                InformacionView()
                    .tabItem { Image(systemName: "list.bullet") }
                
                PerfilView()
                    .tabItem { Image(systemName: "person.fill") }
                
            }.navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    NavegacionView()
}

