//
//  ViewController.swift
//  BildirimOlusturma
//
//  Created by Deniz Yüce on 8.05.2022.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    var izinKontrol = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().delegate = self
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: { granted,error in
            self.izinKontrol = granted
            
            if granted {
                print("İzin alma işlemi başarılı.")
            } else {
                print("İzin alma işlemi başarısız.")
            }
        })
    }

    @IBAction func buttonBildirimOlustur(_ sender: Any) {
        if izinKontrol {
            let icerik = UNMutableNotificationContent()
            icerik.title = "Başlık"
            icerik.subtitle = "Alt başlık"
            icerik.body = "Mesaj"
            icerik.badge = 1
            icerik.sound = UNNotificationSound.default
            
            let tetikleme = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true) //bildirime ne zaman çalışacak
            //repeats tru ise tekrarlanacksa en az 60sn olmak zorunda
            
            
            let istek = UNNotificationRequest(identifier: "x", content: icerik, trigger: tetikleme)
            UNUserNotificationCenter.current().add(istek)
        }
    }
    
}

extension ViewController : UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler([.banner, .sound, .badge])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        let app = UIApplication.shared
        
        app.applicationIconBadgeNumber = 0
        
        
        completionHandler()
    }
}
