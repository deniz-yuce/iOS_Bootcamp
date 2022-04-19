import UIKit

var urun_id:Int = 3416
var urun_adi:String = "Kol saati"
var urun_adet:Int = 100
var urun_fiyat:Double = 149.99
var urun_tedarikci:String = "Rolex"

//print("Urun id : ",(urun_id))

print("Urun id : \(urun_id)")
print("Urun ad: \(urun_adi)")
print("Urun adet : \(urun_adet)")
print("Urun fiyat : \(urun_fiyat)")
print("Urun tedarikci : \(urun_tedarikci)")


// Constant

var sayi = 10
print(sayi)
sayi = 20
print(sayi)
let numara = 100
print (numara)

// numara = 40 -> let command makes variables CONSTANT
// can't be changed afterwards
// usage of let is recommended

// If we are going to writw something on the interface
// that needs to be aString

// Numeric to numeric

var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

//ceil-round-floor


// Numeric to text

var sonuc3 = String(i)  //"42"     -->Both of them are read to be written
var sonuc4 = String(d)   //"56.78"
print(sonuc3)
print(sonuc4)

var sonuc5 = "Kimyasal Oran : \(d)"
print(sonuc5) // the "d" inside became a String

// From text to numeric -- risky

// if we get bil from somewhere application will fail
// we need to check the value before continuing

 var yazi = "500"

 if let sonuc6 = Int(yazi) {
     print(sonuc6)
 }else {
     print("Girilen veri hatalı")
 }


// TUPLES

 var kisi = ("Ahmet","Aksoy") //--> this is a TUPLE
 var ad = kisi.0
 var soyad = kisi.1

 print(ad)
 print(soyad)


 var nokta = (x:10,y:20)
 print(nokta.x)
 print(nokta.y)

 var hataMesaji = (404, "Not Found")
 var (kod,mesaj) = hataMesaji

 print(kod)
 print(mesaj)


// COMPARISON OPERATORS

 var x1 = 50
 var x2 = 50

 var y1 = 70
 var y2 = 80

 print(x1 == x2)
 print(x1 != x2)
 print(x1>x2)
 print(x1 <= x2)
 print(x1<x2)
 print(x1 <= x2)

 print(x1>x2 || y1>y2)
 print(x1>x2 && y1>y2)


// IF

 var yas = 17
 var isim = "Mehmet"

 if yas >= 18 {
     print("Reşitsiniz")
 } else {
     print("Reşit değilsiniz")
 }

 if isim == "Ahmet" {
     print("Merhaba Ahmet")
 } else if isim == "Mehmet" {
     print("Merhaba Mehmet")
 } else {
     print("Tanınmayan kişi")
 }

 var ka = "admin"
 var s = 12345

 if ka == "admin" && s == 12345 {
     print("Hoşgeldiniz")
 } else {
     print("Hatalı giriş")
 }

 var sinif = 9

 if sinif == 9 || sinif == 10{
     print("Sınıf 9 veya 10 dur")
 } else {
     print("Sınıf 9 veya 10 değildir")
 }


// SWITCH

 var gun = 6
 switch gun {
     case 1:
         print("Pazartesi")
     case 2:
         print("Salı")
     case 3:
         print("Çarşamba")
     case 4:
         print("Perşembe")
     case 5:
         print("Cuma")
     case 6:
         print("Cumartesi")
     case 7:
         print("Pazar")
     default:
         print("Böyle bir gün yok")
 }


// Dongüler (foreach in yenilenmiş hali)

 for i in 1...3 {
     print("Döngü 1 : \(i)")
 }

// from 10 to 20 by 5
 for a in stride(from:10, through: 20, by:5) {
     print("Döngü 2: \(a)")
 }

// from 20 to 10 by 5
 for a in stride(from:20, through: 10, by:-5) {
     print("Döngü 3: \(a)")
 }

// WHILE 1,2,3

 var sayac = 1

 while sayac < 4 {
     print("Döngü 4 : \(sayac)")
     // sayac = sayac + 1
     sayac+=1
 }

// BREAK - CONTINUE

 for i in 1...5 {
     if i == 3 {
         break
     }
     print("Döngü 5 : \(i)")
 }

 for i in 1...5 {
     if i == 3 {
         continue
     }
     print("Döngü 6 : \(i)")
 }

//OPTIONAL - NULLABLE - NULL SAFETY




// HomeWork #1
// Declaring with type

var islemNo = 1234
var ogrNo = 2
var kitapNo = 12
var aTarih = "02.04.2022"
var vTarih = "10.05.2022"

print(islemNo)
print(ogrNo)
print(kitapNo)
print(aTarih)
print(vTarih)

let ogrAd:String = "Deniz"
let ogrSoyad:String = "Yüce"
let cinsiyet:String = "Kadın"
let dTarih:String = "02.03.2000"
let sinif:Int = 4

print(ogrAd)
print(ogrSoyad)
print(cinsiyet)
print(dTarih)
print(sinif)

var isBnNo = 43
var kitapAdi = "Fare Kapanı"
var yazarNo = 5
var turNo = 18
var sayfaSayisi = 173
var puan = 4.0

print(isBnNo)
print(kitapAdi)
print(yazarNo)
print(turNo)
print(sayfaSayisi)
print(puan)

var yazarAd:String = "Agatha"
var yazarSoyad:String = "Christie"

print(yazarAd)
print(yazarSoyad)

let turAdi = "Polisiye"

print(turAdi)

