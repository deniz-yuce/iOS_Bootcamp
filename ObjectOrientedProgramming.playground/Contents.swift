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


// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ INHERITANCE ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

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


// OVERRIDE USAGE

class Hayvan {
    func sesCikar() {
        print("Sesim yok")
    }
}

class Memeli : Hayvan {

}

class Kedi : Memeli {
    override func sesCikar() {
        print("Miyav miyav")
    }
}

class Kopek : Memeli {
    override func sesCikar() {
        print("Hav hav")
    }
}

var hayvan = Hayvan()
var memeli = Memeli()
var kedi = Kedi()
var kopek = Kopek()

hayvan.sesCikar()
memeli.sesCikar()
kedi.sesCikar()
kopek.sesCikar()

// ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~

// is : (Type Checking) Tip kontrolü için kullanılır.(javadaki instance of
// metodu gibi)
// • as : (Upcasting ) bir tipi başka bir tipe dönüştürmek için kullanılır
// • as ! : ( Force Downcasting ) bir tipi başka bir tipe dönüştürmek için
// kullanılır. Dönüşüm sırasında başarısız olursa hata, başarılı ise değeri
// dönüştürür.
// • as ? : (For Optional downcasting) Dönüşüm sırasında optional bir veri
// geliyorsa. Dönüşüm sırasında başarısız olursa nil , başarılı ise değeri
// dönüştürür.

// ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~

// PROTOCOL (INTERFACE) it's like inheritance -iki farklı sayfadan erişimler için kullanıyoruz-

protocol MyProtocol {               //burada oluşturacaklarımız TASLAK olmalı (get-set)
    var degisken:Int { get set }
    
    func metod1()                   //protocol,taslak olduğu için {} olmamasına sıkıntı çıkarmıyor
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

// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ EXTENSION ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
// --> Kotlin dilinde -> infix fonksiyonu (androidde devar)
// var olan yapılara özellik ekliyoruz

extension Int {
    func carp(sayi:Int) -> Int {
        return self * sayi          //self extension dan sonraki int i belirtiyo
    }
}

var x = 3.carp(sayi: 10)
print(x)

// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ CLOSURE ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

var ifade = {
    print("Closure kullanımı")
}

ifade()



// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ COLLECTIONS ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

// used for listing, çoğul yapılır

// Array, Set, Dictionary
// Set yapısı itibariyle vari aktarıldıkça sırayla eklenmez, karıştırılır (Array le 1. farkı)
// Set aynı verinin tekrarlanmasını istemez. içeride Jazz varsa eklenmeye çalışıyorsa eklemez siler (2. farkı)
// Dictionary de index i, key i, kendimiz belirliyoruz
// Dictionary i biz çok kullanmıyoruz genelde sistem bizden istediğinde kullanıyoruz


// ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ARRAY ~ ~ ~ ~ ~ ~ ~ ~ ~ ~


var numaralar = [10.0,20.0,30.0]
var sayilar = [Int](repeating: 0, count: 1000)

var meyveler = [String]()       // empty array



// Adding valus

meyveler.append("Elma")//0.
meyveler.append("Muz")//1.
meyveler.append("Kiraz")//2.

print(meyveler)


// Updating

meyveler[0] = "Yeni Elma"

print(meyveler)


// Insert

meyveler.insert("Portakal", at: 1)

print(meyveler)


print(meyveler.isEmpty)     // Boş mu?
print(meyveler.count)       // boyut


print(meyveler.first!)//0. index - ilk eleman
print(meyveler.last!)//son eleman
print(meyveler.contains("Muzd"))


for meyve in meyveler {
    print("Sonuç 1 : \(meyve)")
}


for (indeks, meyve) in meyveler.enumerated() {    //hem içeriği hem index i döndürecek
    print("\(indeks). -> \(meyve)")
}


meyveler.remove(at: 1)
print(meyveler)


meyveler.removeAll()
print(meyveler)



//------------------------------------------------------//


class Ogrenciler {
    var no:Int?
    var ad:String?
    var sinif:String?

    init(no:Int,ad:String,sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}


var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Arzu", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Beyza", sinif: "12A")


var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)


for o in ogrencilerListesi {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}



// * * * * * FILTERING * * * * * *

//bundan sonra deneni not al


var f1 = ogrencilerListesi.filter({ $0.no! > 100 }) //$0 fix,kural - kotwinde --> it

print("Filtreleme 1 :")

for o in f1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}


var f2 = ogrencilerListesi.filter({ $0.ad! .contains("y") })
print("Filtreleme 2 :")

for o in f2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}


// SIRALAMA

var s1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! }) //1 il2 yi 2 ile 3 karşılaştırır aslında

print("Sayısal olarak büyükten küçüğe")

for o in s1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}


var s2 = ogrencilerListesi.sorted(by: { $0.no! < $1.no! })

print("Sayısal olarak küçükten büyüğe")

for o in s2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}



var s3 = ogrencilerListesi.sorted(by: { $0.ad! > $1.ad! }) //1 il2 yi 2 ile 3 karşılaştırır aslında

print("Metinsel olarak büyükten küçüğe")

for o in s3 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}



var s4 = ogrencilerListesi.sorted(by: { $0.ad! < $1.ad! }) //1 il2 yi 2 ile 3 karşılaştırır aslında

print("Metinsel olarak küçükten büyüğe")

for o in s4 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}



// SET USAGE

var meyveler1 = Set<String>()

meyveler1.insert("Elma")
meyveler1.insert("Portakal")
meyveler1.insert("Muz")

print(meyveler1)    //sıraları karışık olacak


meyveler1.insert("Elma")

print(meyveler1)    //aynı veri tekrar eklenemez


meyveler1.insert("Amasya Elma")
print(meyveler1)


for meyve in meyveler1 {
    print("Sonuç 1 : \(meyve)")
}


for (indeks, meyve) in meyveler1.enumerated() {
    print("\(indeks). -> \(meyve)")
}

print(meyveler1.count)

meyveler1.removeAll()

print(meyveler1)


// ANY bütün türleri kapsar (süper)


// HASHMAP - MAP - DICTIONARY


var iller = [Int:String]()  // Int -> key  |  String -> değer

iller[16] = "Bursa"
iller[34] = "İstanbul"

print(iller)


// Güncelleme

iller[16] = "Yeni Bursa"

print(iller)


for (anahtar, deger) in iller {
    print("Anahtar : \(anahtar) - Değer : \(deger)")
}


// Değer silme

iller.removeValue(forKey: 16)
print(iller)


// * * * * * * * * * ADVANCED SWIFT * * * * * * * * *


// GUARD
// if in tersi -> yanlışsa içeri girecek
// bir fonksiyon içerisinde kullanılmak zorunda
// hata yakalama için kolaylık sağlıyor


func kisiTanima(ad:String) {
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    } else {
        print("Tanınmayan kişi")
    }
}

kisiTanima(ad: "Ahmet")


func kisiTanimaGuard(ad:String) {
    guard ad == "Ahmet" else {
        print("Tanınmayan kişi")
        return
    }
    print("Merhaba Ahmet")
}

kisiTanimaGuard(ad: "Ahmetx")


// HATA AYIKLAMA            //try-catch-throw


enum Hatalar : Error {
    case sifiraBolunmeHatasi
}


//yapıyı sistem kendi oluşturuyor biz kullanmak zorunda kalıyoruz


func bolme(sayi1:Int,sayi2:Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do {
    let sonuc = try bolme(sayi1: 10, sayi2: 1)
    print(sonuc)
} catch Hatalar.sifiraBolunmeHatasi {
    print("Sayı sıfıra bölünemez.")
}


let sonuc1 = try? bolme(sayi1: 10, sayi2: 0)    //hata olursa sonuc1 nil olucak olmazsa değer atanacak

if let temp = sonuc1 {
    print(temp)
} else {
    print("Sayı sıfıra bölünemez")
}

// listeleme için kullanılır, çoğul yapılır


// Array, Set, Dictionary
// Set yapısı itibariyle vari aktarıldıkça sırayla eklenmez, karıştırılır (Array le 1. farkı)
// Set aynı verinin tekrarlanmasını istemez. içeride Jazz varsa eklenmeye çalışıyorsa eklemez siler (2. farkı)
// Dictionary de index i, key i, kendimiz belirliyoruz
// Dictionary i biz çok kullanmıyoruz genelde sistem bizden istediğinde kullanıyoruz


// ARRAY KULLANIMI


var numaralar = [10.0,20.0,30.0]
var sayilar = [Int](repeating: 0, count: 1000)

var meyveler = [String]()       // boş array tanımlama


// Veri ekleme

meyveler.append("Elma")//0.
meyveler.append("Muz")//1.
meyveler.append("Kiraz")//2.

print(meyveler)


//Güncelleme

meyveler[0] = "Yeni Elma"
print(meyveler)


// Insert

meyveler.insert("Portakal", at: 1)

print(meyveler)

print(meyveler.isEmpty)//Boş mu?
print(meyveler.count)//boyut

print(meyveler.first!)//0. index - ilk eleman
print(meyveler.last!)//son eleman
print(meyveler.contains("Muzd"))


for meyve in meyveler {
    print("Sonuç 1 : \(meyve)")
}


for (indeks, meyve) in meyveler.enumerated() {    //hem içeriği hem index i döndürecek
    print("\(indeks). -> \(meyve)")
}


meyveler.remove(at: 1)
print(meyveler)


meyveler.removeAll()
print(meyveler)


//------------------------------------------------------//

class Ogrenciler {
    var no:Int?
    var ad:String?
    var sinif:String?

    init(no:Int,ad:String,sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}


var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Arzu", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Beyza", sinif: "12A")


var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)


for o in ogrencilerListesi {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}



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


