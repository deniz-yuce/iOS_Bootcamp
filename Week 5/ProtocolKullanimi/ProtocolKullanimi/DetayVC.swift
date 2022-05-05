//
//  DetayVC.swift
//  ProtocolKullanimi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var textFieldGirdi: UITextField!
    
    var delegate:DetayVCToViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func buttonGonder(_ sender: Any) {
        if let mesaj = textFieldGirdi.text {
            delegate?.veriGonder(mesaj: mesaj)
        }
    }
    

}
