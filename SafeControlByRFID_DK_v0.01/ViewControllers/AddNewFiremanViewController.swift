//
//  AddNewFiremanViewController.swift
//  SafeControlByRFID_DK_v0.01
//
//  Created by DennisKao on 2019/9/2.
//  Copyright © 2019 DennisKao. All rights reserved.
//

import UIKit

class AddNewFiremanViewController: UIViewController, BluetoothModelDelegate {
    @IBOutlet weak var fireManRFID: UILabel!
    @IBOutlet weak var fireManName: UILabel!
    
    var recievedRFID:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        BluetoothModel.singletion.delegate = self
        // Do any additional setup after loading the view.
        
    }
    
    
    func didReciveRFIDDate(uuid: String) {
        DispatchQueue.main.async {
            self.fireManRFID.text=uuid
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
