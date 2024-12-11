import SwiftUI

struct Anasayfa: View {
    @State private var oyunEkraninaGecis = false
    var body: some View {
        NavigationStack {
            VStack {
                Button("BASLA:"){
                    oyunEkraninaGecis = true
                }
                
            }
            .navigationTitle("Ana Sayfa")
            .toolbar{
                ToolbarItemGroup(placement:.navigationBarTrailing){
                    Button("bas"){
                        print("heyo")
                    }
                    Button("basma"){
                        print("heyo")
                    }
                    Button{
                        print("heyo")
                    }label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationDestination(isPresented: $oyunEkraninaGecis){
                let kisi = Kisiler(isim: "merve",yas: 32, boy: 1.70,bekar: false)
                OyunEkrani(kisi:kisi)
            }
        }
    }
}
 
#Preview {
    Anasayfa()
}



//yasam dongusu : Inıt 1 kez calisir
//on appear: ekran goruldugunde calisir
//ondisappear : ekran kapandıgında calisir

