//
//  SonucEkrani.swift
//  calismaYapisi
//
//  Created by Mehmet Tuna Arıkaya on 12.12.2024.
//

import SwiftUI

struct SonucEkrani: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        
            VStack {
                Text("Sonuç ekrani : ")
                    .font(.system(size: 40))
                    .padding()
                Button("Kapat"){
                    pm.wrappedValue.dismiss()
                    
                }
        }
    }
}


#Preview {
    SonucEkrani()
}
