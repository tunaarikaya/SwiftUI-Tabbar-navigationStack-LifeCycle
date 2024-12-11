//
//  Kisiler.swift
//  calismaYapisi
//
//  Created by Mehmet Tuna Arıkaya on 12.12.2024.
//

import Foundation


class Kisiler{
 
    var isim : String = ""
    var yas : Int?
    var boy : Double?
    var bekar : Bool?
    init(isim: String, yas: Int? = nil, boy: Double? = nil, bekar: Bool? = nil) {
        self.isim = isim
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
    init(){
        
    }
    
}

