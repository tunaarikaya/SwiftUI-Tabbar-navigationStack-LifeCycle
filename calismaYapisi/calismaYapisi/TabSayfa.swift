//
//  TabSayfa.swift
//  calismaYapisi
//
//  Created by Mehmet Tuna Arıkaya on 12.12.2024.
//

import SwiftUI

struct TabSayfa: View {
    init(){
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemBrown
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        
        
    }
    func renkDegistir(itemAppearance: UITabBarItemAppearance){
        //seçili
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor:UIColor.systemOrange]
        //seçilideğil
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white]
        
        
    }
    
    var body: some View {
        NavigationStack{
            TabView{
                HomePage().tabItem{
                    Label("anasayfa",systemImage: "homekit")
                }
                Settings().tabItem{
                    Label("ayarlar",systemImage: "gear")
                }
            }.navigationTitle("TabView Kullanim")
        }
    }
}

#Preview {
    TabSayfa()
}
