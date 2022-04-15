import UIKit

//null değişken yazma, tanımlanması lazım

// var x = "merahab"

// var str:String? = nil //birinci yöntem

// var str1:String?  //daha çok kullanılan diğer yöntem

// str1 = "Hello"

//nil mi değil mi kontrolü yapısı:
// if str1 != nil {
//     print(str1!) // ! işareti ile optional unwrapping        //* * * * * * *//
// }else {
//     print("str1 nil değer içeriyor")
// }

// İDEAL YÖNTEM - Optional binding
// elimizdeki değişkeni başka bir değişkene aktarıyoruz (temp)
// if let temp = str1 { //yanlız let kullandığımız için değerini değiştiremeyiz
//     print(temp) //unwrapping i ! koymadan otomatik yapıyor
//     //temp = "Hello world" //yapamayız...
// } else {
//     print("str1 nil değer içeriyor")
    
// }

//optional binding sadece if let ile yapmayız
// if var ile yapalım

// if var temp = str1 {
//     print(temp)
//     temp = "Hello world"
//     print(temp) // tekrar değer atadığımız için bu senaryoda var kullanmamız daha faydalı
//                 // eğer tekrar atama yapmıyo olsaydık let yapmamız uygundu
// } else {
//     print("str1 nil değer içeriyor")
// }


// ~ ~ ~ ~ ~ ~ ~ ~ ~ NESNE TABANLI PROGRAMLAMA ~ ~ ~ ~ ~ ~ ~ ~ ~ //

//class Araba {
//    var renk:String?
//    var hiz:Int?
//    var calisiyorMu:Bool?
//
//    init() {
//        print("Boş constructor oluşturuldu")
//    }
//
//    // self : sınıfın kendisini temsil eder                 //Bu işleme "Shadowing" denir
//    // super : üst sınıfı (kalıtım ile) temsil eder
//    init(renk:String,hiz:Int,calisiyorMu:Bool){
//        self.renk = renk
//        self.hiz = hiz
//        self.calisiyorMu = calisiyorMu
//        print("Dolu constructor calisti")
//    }
//
//    func calistir() {
//        calisiyorMu = true
//        hiz = 5
//    }
//
//    func durdur() {
//        calisiyorMu = false
//        hiz = 0
//    }
//
//    func hizlan(kacKm:Int) {
//        hiz!+=kacKm
//    }
//
//    func yavasla(kacKm:Int) {
//        hiz!-=kacKm         //ya da böyle yapıcaz
//    }
//
//    func bilgiAl() {
//        print("*************")
//        print("Renk           : \(renk!)")
//        print("Hız            : \(hiz!)")
//        print("Çalışıyor mu   : \(calisiyorMu!)")
//    }
//
//
//}

// let bmw = Araba()

//Değer atama

// let bmw = Araba(renk:"Mavi",hiz:100,calisiyorMu:true)

// bmw.renk = "Mavi"
// bmw.hiz = 100
// bmw.calisiyorMu = true

// Değer okuma
// print("*************")                                       // * * * * * * * //
// print("Renk           : \(bmw.renk!)")          //optional yazısı çıkmasın diye ! ile umwrap yapıyoruz
// print("Hız            : \(bmw.hiz!)")
// print("Çalışıyor mu   : \(bmw.calisiyorMu!)")

//Değer okuma

// bmw.bilgiAl()
// bmw.durdur()
// bmw.bilgiAl()
// bmw.calistir()
// bmw.bilgiAl()
// bmw.hizlan(kacKm: 100)
// bmw.bilgiAl()


// let sahin = Araba()

// sahin.renk = "Beyaz"
// sahin.hiz = 0
// sahin.calisiyorMu = false

// let sahin = Araba(renk:"Beyaz",hiz:0,calisiyorMu:false)

// Değer okuma
// print("*************")
// print("Renk           : \(sahin.renk!)")
// print("Hız            : \(sahin.hiz!)")
// print("Çalışıyor mu   : \(sahin.calisiyorMu!)")

// sahin.bilgiAl()
// sahin.calistir()
// sahin.bilgiAl()
// sahin.hizlan(kacKm: 30)
// sahin.bilgiAl()

//içerde bir değişken var değerini bir fonksiyon ile değerini değiştirirsek buna SIDE EFFECT denir


// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ FONKSİYONLAR ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

//class Fonksiyonlar {
//    //Geri dönüş değeri olmayan ( void )
//    func selamla() {
//        let sonuc = "Merhaba Ahmet"
//        print(sonuc)
//    }
//
//    //Geri dönüş değeri olan ( return )
//    func selamla1() -> String{      // bu fonksiyon sana String türünde bir veri döndürecek
//        let sonuc = "Merhaba Ahmet"
//        return sonuc
//    }
//
//    // Parametre kullanımı
//    func selamla2(isim:String) {
//        let sonuc = "Merhaba \(isim)"
//        print(sonuc)
//    }
//
//    func toplama(sayi1:Int,sayi2:Int) -> Int{
//        let toplam = sayi1 + sayi2
//        return toplam
//    }
//
//    //Overloading
//    func carpma(sayi1:Int,sayi2:Int){
//        print("Çarpma : \(sayi1 * sayi2)")
//    }
//
//    func carpma(sayi1:Double,sayi2:Double){
//        print("Çarpma : \(sayi1 * sayi2)")
//    }
//
//    func carpma(sayi1:Int,sayi2:Int,isim:String){
//        print("Çarpma : \(sayi1 * sayi2) - İşlemi yapan : \(isim)")
//    }
//
//}
//
//let f = Fonksiyonlar()
// f.selamla()

// let gelenSonuc = f.selamla1()
// print("Gelen sonuç : \(gelenSonuc)")

// f.selamla2(isim: "Mehmet")

// let gelenToplam = f.toplama(sayi1:10, sayi2:20)
// print("Gelen toplam : \(gelenToplam)")

// f.carpma(sayi1:2,sayi2:4)
// f.carpma(sayi1:1.5,sayi2:2)
// f.carpma(sayi1:2,sayi2:4,isim:"Deniz")


// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ STATIC ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

// Değişken ve metodlara sınıf isimi ile erişim sağlar

// class ASinifi {
//     static var x = 10

//     static func method() {
//         print("Method calisti")
//     }
// }

// let a = ASinifi()

// print(a.x)

// print(ASinifi.x)    //parantez yok
// ASinifi.method()

// class BSinifi {
//     var x = 10

//     func method() {
//         print("Method calisti")
//     }
// }

//Bsinifi() : Sanal nesne  //parantez var

// print(BSinifi().x)
// BSinifi().method()


// // Enumeration

// enum KonserveBoyut {
//     case kucuk
//     case orta
//     case buyuk
// }

// func ucretHesapla(boyut:KonserveBoyut,adet:Int) {
//     switch boyut {
//         //case KonserveBoyut.kucuk
//         case .kucuk:
//             print("Fiyat : \(adet*10) TL")
//         case .orta:
//             print("Fiyat : \(adet*20) TL")
//         case .buyuk:
//             print("Fiyat : \(adet*30) TL")
//     }
// }

// ucretHesapla(boyut: .orta, adet: 23)

// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ COMPOSITION ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

//class Kategoriler {
//    var kategori_id:Int?
//    var kategori_ad:String?
//
//    init(kategori_id:Int,kategori_ad:String) {
//        self.kategori_id = kategori_id
//        self.kategori_ad = kategori_ad
//    }
//}
//
//class Yonetmenler {
//    var yonetmen_id:Int?
//    var yonetmen_ad:String?
//
//    init(yonetmen_id:Int,yonetmen_ad:String) {
//        self.yonetmen_id = yonetmen_id
//        self.yonetmen_ad = yonetmen_ad
//    }
//}
//
//class Filmler {
//    var film_id:Int?
//    var film_ad:String?
//    var film_yil:Int?
//    var kategori:Kategoriler?
//    var yonetmen:Yonetmenler?

//    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler) {
//        self.film_id = film_id
//        self.film_ad = film_ad
//        self.film_yil = film_yil
//        self.kategori = kategori
//        self.yonetmen = yonetmen
//    }
//}
//
//let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
//let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu")


//let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
//let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")
//
//let f1 = Filmler(film_id: 1, film_ad: "Interstellar", film_yil: 2019, kategori: k2, yonetmen: y2)
//
//print("Film id : \(f1.film_id!)")
//print("Film adı : \(f1.film_ad!)")
//print("Film yılı : \(f1.film_yil!)")
//print("Film kategori : \(f1.kategori!.kategori_ad!)") //composition - iç içe erişme
//print("Film yönetmen : \(f1.yonetmen!.yonetmen_ad!)")


// KALITIM

 class Ev {
     var pencereSayisi:Int?

     init(pencereSayisi:Int) {
         self.pencereSayisi = pencereSayisi
     }
 }

 class Saray : Ev {
     var kuleSayisi:Int?

     init(kuleSayisi:Int, pencereSayisi:Int) {
         self.kuleSayisi = kuleSayisi
         super.init(pencereSayisi: pencereSayisi)
     }
 }

 class Villa : Ev {
     var garajVarmi:Bool?

     init(garajVarmi:Bool, pencereSayisi:Int) {
         self.garajVarmi = garajVarmi
         super.init(pencereSayisi: pencereSayisi)
     }
 }

 var topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
 var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 30)

 print(topkapiSarayi.kuleSayisi!)
 print(topkapiSarayi.pencereSayisi!)


 print(bogazVilla.garajVarmi!)
 print(bogazVilla.pencereSayisi!)


//OVERRIDE KULLANIMI

//class Hayvan {
//    func sesCikar() {
//        print("Sesim yok")
//    }
//}
//
//class Memeli : Hayvan {
//
//}
//
//class Kedi : Memeli {
//    override func sesCikar() {
//        print("Miyav miyav")
//    }
//}
//
//class Kopek : Memeli {
//    override func sesCikar() {
//        print("Hav hav")
//    }
//}
//
//var hayvan = Hayvan()
//var memeli = Memeli()
//var kedi = Kedi()
//var kopek = Kopek()
//
//hayvan.sesCikar()
//memeli.sesCikar()
//kedi.sesCikar()
//kopek.sesCikar()

// is : (Type Checking) Tip kontrolü için kullanılır.(javadaki instance of
// metodu gibi)
// • as : (Upcasting ) bir tipi başka bir tipe dönüştürmek için kullanılır
// • as ! : ( Force Downcasting ) bir tipi başka bir tipe dönüştürmek için
// kullanılır. Dönüşüm sırasında başarısız olursa hata, başarılı ise değeri
// dönüştürür.
// • as ? : (For Optional downcasting) Dönüşüm sırasında optional bir veri
// geliyorsa. Dönüşüm sırasında başarısız olursa nil , başarılı ise değeri
// dönüştürür.

// NESNE DÖNÜŞÜMÜ

// UPCASTING
//var ev = Saray(kuleSayisi: 4, pencereSayisi: 100) as Ev

// DOWNCASTING
//var saray = Ev(pencereSayisi: 5) as? Saray

// TİP KONTROLÜ
//if ev is Ev {
//    print("Nesne ev sınıfından türetilmiştir.")
//} else {
//    print("Nesne ev sınıfından türetilmemiştir.")
//}

//Yukarıdaki as is i tekrar et !!!***1!!!?1? *1!

// PROTOCOL (INTERFACE) kalıtıma benzer, iki farklı sayfadan erişimler için kullanıyoruz

protocol MyProtocol {     //burada oluşturacaklarımız TASLAK olmalı (get-set)
    var degisken:Int { get set }
    
    func metod1()               //protocol,taslak olduğu için {} olmamasına sıkıntı çıkarmıyor
    func metod2() -> String
}

// ype 'ClassA' does not conform to protocol 'MyProtocol' hatası önemli
class ClassA : MyProtocol {
    var degisken: Int = 10
    
    func metod1() {
        print("Metod 1 çalıştı")
    }
    
    func metod2() -> String {
        return "Metod2 çalıştı"
    }
}

var a = ClassA()

print(a.degisken)
a.metod1()
print(a.metod2())

// burdan sonra bişey dendi not al ders kaydından

// EXTENSION  --> Kotlin dilinde -> infix fonksiyonu (androidde devar)
// var olan yapılara özellik ekliyoruz

extension Int {
    func carp(sayi:Int) -> Int {
        return self * sayi          //self extension dan sonraki int i belirtiyo
    }
}

var x = 3.carp(sayi: 10)
print(x)

// CLOSURE

var ifade = {
    print("Closure kullanımı")
}

ifade()
