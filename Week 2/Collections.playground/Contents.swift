import UIKit


// COLLECTIONS
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


// * * * * * FİLTRELEME * * * * * *
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


// SET KULLANIMI
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


// * * * * * * * * * İLERİ SWIFT * * * * * * * * *

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
