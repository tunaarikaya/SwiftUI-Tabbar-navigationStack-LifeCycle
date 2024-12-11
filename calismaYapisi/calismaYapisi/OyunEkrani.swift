//
//  OyunEkrani.swift
//  calismaYapisi
//
//  Created by Mehmet Tuna Arıkaya on 12.12.2024.
//

import SwiftUI

struct OyunEkrani: View {
    @Environment(\.presentationMode) var pm
    @State private var sonucEkraninaGecis = false
    var kisi = Kisiler()
    var body: some View {
        NavigationView {
            VStack (spacing : 100){
                Text("İsim : \(kisi.isim)- \(kisi.boy!) - \(kisi.yas!) - \(String(kisi.bekar!))")
                Button("Başla") {
                    // Buton aksiyonu buraya gelecek
                    sonucEkraninaGecis = true
                }
                Button("Bitti  "){
                    pm.wrappedValue.dismiss()
                }
                .padding()
            }
            .navigationTitle("Oyun Ekranı")
            .sheet(isPresented: $sonucEkraninaGecis){
                SonucEkrani()
                //sheet üstten sayfa acar farklı bir yapi .
            }
        }
    }
}

#Preview {
    OyunEkrani()
}
