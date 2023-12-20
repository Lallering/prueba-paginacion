//
//  SplashScreenView.swift
//  Prueba Paginacion
//
//  Created by erick.castaneda on 08/12/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct SplashScreenView: View {
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.orange, .red, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack {
                    Text("Cargando prueba de paginación....")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .shadow(radius: 5)
                    
                    AnimatedImage(url: URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/disp/04de2e31234507.564a1d23645bf.gif"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width / 1,
                               height: geometry.size.height / 3)
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
