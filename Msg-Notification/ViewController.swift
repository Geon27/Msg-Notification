//
//  ViewController.swift
//  Msg-Notification
//
//  Created by 육건 on 2023/01/27.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet var msg: UITextField!
    @IBOutlet var datepicker: UIDatePicker!
    
    @IBAction func save(_ sender: Any) {
        if #available(iOS 10, *) {
            // UserNotification 프레임워크를 사용한 로컬 알림
        } else {
            // LocalNotification 객체를 사용한 로컬 알림
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

