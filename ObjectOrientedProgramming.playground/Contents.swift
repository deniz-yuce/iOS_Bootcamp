import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?

    init() {
        print("Boş constructor oluşturuldu")
    }

    // self  : represents class itself                     // This is called "Shadowing"
    // super : represents upper class (with inheritance)
    init(renk:String,hiz:Int,calisiyorMu:Bool){
        self.renk = renk
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu
        print("Dolu constructor calisti")
    }

    func calistir() {
        calisiyorMu = true
        hiz = 5
    }

    func durdur() {
        calisiyorMu = false
        hiz = 0
    }

    func hizlan(kacKm:Int) {
        hiz!+=kacKm
    }

    func yavasla(kacKm:Int) {
        hiz!-=kacKm
    }

    func bilgiAl() {
        print("*************")
        print("Renk           : \(renk!)")
        print("Hız            : \(hiz!)")
        print("Çalışıyor mu   : \(calisiyorMu!)")
    }


}

 let bmw = Araba()

// Value assigment

 let bmw = Araba(renk:"Mavi",hiz:100,calisiyorMu:true)

 bmw.renk = "Mavi"
 bmw.hiz = 100
 bmw.calisiyorMu = true

// Reading values
 print("*************")                                       // * * * * * * * //
 print("Renk           : \(bmw.renk!)")          //we are using ! to not see Optional() in output
 print("Hız            : \(bmw.hiz!)")
 print("Çalışıyor mu   : \(bmw.calisiyorMu!)")

//Reading values

 bmw.bilgiAl()
 bmw.durdur()
 bmw.bilgiAl()
 bmw.calistir()
 bmw.bilgiAl()
 bmw.hizlan(kacKm: 100)
 bmw.bilgiAl()


 let sahin = Araba()

 sahin.renk = "Beyaz"
 sahin.hiz = 0
 sahin.calisiyorMu = false

 let sahin = Araba(renk:"Beyaz",hiz:0,calisiyorMu:false)

// Reading values
 print("*************")
 print("Renk           : \(sahin.renk!)")
 print("Hız            : \(sahin.hiz!)")
 print("Çalışıyor mu   : \(sahin.calisiyorMu!)")

 sahin.bilgiAl()
 sahin.calistir()
 sahin.bilgiAl()
 sahin.hizlan(kacKm: 30)
 sahin.bilgiAl()

// if there is a variable inside, and if we are changin that value with a function, this is called SIDE EFFECT


// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ FUNCTIONS ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

class Fonksiyonlar {
    // There is no returning values ( void )
    func selamla() {
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }

    // With returning values ( return )
    func selamla1() -> String{      // some String value will be returned to this function
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }

    // Using parameters
    func selamla2(isim:String) {
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }

    func toplama(sayi1:Int,sayi2:Int) -> Int{
        let toplam = sayi1 + sayi2
        return toplam
    }

    // Overloading
    func carpma(sayi1:Int,sayi2:Int){
        print("Çarpma : \(sayi1 * sayi2)")
    }

    func carpma(sayi1:Double,sayi2:Double){
        print("Çarpma : \(sayi1 * sayi2)")
    }

    func carpma(sayi1:Int,sayi2:Int,isim:String){
        print("Çarpma : \(sayi1 * sayi2) - İşlemi yapan : \(isim)")
    }

}

let f = Fonksiyonlar()
 f.selamla()

 let gelenSonuc = f.selamla1()
 print("Gelen sonuç : \(gelenSonuc)")

 f.selamla2(isim: "Mehmet")

 let gelenToplam = f.toplama(sayi1:10, sayi2:20)
 print("Gelen toplam : \(gelenToplam)")

 f.carpma(sayi1:2,sayi2:4)
 f.carpma(sayi1:1.5,sayi2:2)
 f.carpma(sayi1:2,sayi2:4,isim:"Deniz")


// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ STATIC ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

// It gives access to variables and methods via class name

 class ASinifi {
     static var x = 10

     static func method() {
         print("Method calisti")
     }
 }

 let a = ASinifi()

 print(a.x)

 print(ASinifi.x)    //there is no paranthesis
 ASinifi.method()

 class BSinifi {
     var x = 10

     func method() {
         print("Method calisti")
     }
 }

//Bsinifi() : Virtual object  //there is paranthesis

 print(BSinifi().x)
 BSinifi().method()


// // Enumeration

 enum KonserveBoyut {
     case kucuk
     case orta
     case buyuk
 }

 func ucretHesapla(boyut:KonserveBoyut,adet:Int) {
     switch boyut {
         //case KonserveBoyut.kucuk
         case .kucuk:
             print("Fiyat : \(adet*10) TL")
         case .orta:
             print("Fiyat : \(adet*20) TL")
         case .buyuk:
             print("Fiyat : \(adet*30) TL")
     }
 }

 ucretHesapla(boyut: .orta, adet: 23)

// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ COMPOSITION ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?

    init(kategori_id:Int,kategori_ad:String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?

    init(yonetmen_id:Int,yonetmen_ad:String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?

    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu")


let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Interstellar", film_yil: 2019, kategori: k2, yonetmen: y2)

print("Film id : \(f1.film_id!)")
print("Film adı : \(f1.film_ad!)")
print("Film yılı : \(f1.film_yil!)")
print("Film kategori : \(f1.kategori!.kategori_ad!)") //composition - iç içe erişme
print("Film yönetmen : \(f1.yonetmen!.yonetmen_ad!)")




//Homework #2


class Odev2 {
    func soru1(derece:Double) -> Double {
        let sonuc = ( derece * 1.8 ) + 32
        return sonuc
    }

    func soru2(kenar1:Int, kenar2:Int) -> Int {
        let sonuc = 2 * (kenar1 + kenar2)
        return sonuc
    }

    func soru3(sayi : Int) -> Int {
        var sonuc = 1
        for i in 1...sayi {
            sonuc *= i
        }
        return sonuc
    }

    func soru4(kelime : String, harf : Character) -> Int {
        var letterCount = 0

        for character in kelime {
            if character == harf {
                letterCount += 1
            }
        }
        return letterCount
    }

    func soru5(kenar : Int) -> Int {
        let sonuc = ( kenar - 2) * 180
        return sonuc
    }

    func soru6(gun : Int) -> Int {
        if (gun * 8) < 160 {
            return gun * 8 * 10
        } else {
            let mesaiSaat = (gun * 8) - 160
            return (mesaiSaat * 20) + (160 * 10)
        }
    }

    func soru7(kota : Int) -> Int {
        if kota < 50 {
            return 100
        } else {
            let artan = kota - 50
            return (artan * 4) + 100
        }
    }
}

let o = Odev2();

//Soru 1
print("1 -  Derecenin Fahrenhiet karşılığı : \(o.soru1(derece : 38))")

//Soru 2
let a = 4
let b = 6
print("2 -  Kenarları \(a) ve \(b) olan dikdörtgenin çevresi : \(o.soru2(kenar1 : a, kenar2 : b))")

//Soru 3
let x = 4
print("3 -  \(x) değerinin faktoriyeli : \(o.soru3(sayi : x))")

//Soru 4
let kelime = "Nalan"
let harf:Character = "a"
print("4 -  \(harf) harfi \(kelime) kelimesinin içerisinde -> \(o.soru4(kelime: kelime, harf: harf)) kere var")

//Soru 5
let kenarSayisi = 3
print("5 -  Kenar sayısı \(kenarSayisi) olan şeklin iç açılar toplamı : \(o.soru5(kenar : kenarSayisi))")

//Soru 6
let gunSayisi = 10
print("6 -  \(gunSayisi) çalışmaya denk gelen maaş : \(o.soru6(gun : gunSayisi))")

//Soru 7
let kotaMiktari = 60
print("7 -  \(kotaMiktari) kota miktarına göre ücretiniz : \(o.soru7(kota : kotaMiktari))")


