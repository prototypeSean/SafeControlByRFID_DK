//
//  SafeControlViewController.swift
//  SafeControlByRFID_DK_v0.01
//
//  Created by DennisKao on 2019/8/30.
//  Copyright © 2019 DennisKao. All rights reserved.
//

import UIKit

class SafeControlViewController: UIViewController, BluetoothModelDelegate {
    @IBOutlet weak var SafeControlTableView: UITableView!
    func didReciveRFIDDate(uuid: String) {
        print("收到RFID Data ＝ \(uuid)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BluetoothModel.singletion.delegate = self
        // Do any additional setup after loading the view.
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
