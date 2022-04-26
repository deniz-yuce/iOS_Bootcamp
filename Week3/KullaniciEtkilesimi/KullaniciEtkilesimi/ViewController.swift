//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Deniz Yüce on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive){ action in //desctructive -> kırmızı renk
            print("iptal seçildi")
        }
        alert.addAction(cancelAction) //-> default action kapatmak oluyor
        
        let okayAction = UIAlertAction(title: "Okay", style: .cancel){ action in //cancel -> mavi renk
            print("okay seçildi")
        }
        alert.addAction(okayAction)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive){ action in //desctructive -> kırmızı renk
            print("iptal seçildi")
        }
        alert.addAction(cancelAction) //-> default action kapatmak oluyor
        
        let okayAction = UIAlertAction(title: "Okay", style: .cancel){ action in //cancel -> mavi renk
            print("okay seçildi")
        }
        alert.addAction(okayAction)
        
        self.present(alert, animated: true)

        
    }
    
    @IBAction func buttonSpecialAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Header", message: "Message", preferredStyle: .alert)
        
        alert.addTextField{ textField in //alert de text field çıkarma
            textField.placeholder = "Veri giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        
        let saveAction = UIAlertAction(title: "Save", style: .cancel) { action in
            
            let textField = alert.textFields![0] as UITextField //ilk text field dan veri alma
            
            if let alinanVeri = textField.text {
                print("Veri : \(alinanVeri)")
            }
            
            //print("Save is choosen")
        }
        
        alert.addAction(saveAction)
        
        self.present(alert, animated: true)
    }
    
    
}

