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
            // 알림 동의 여부를 확인
            UNUserNotificationCenter.current().getNotificationSettings{ settings in
                if settings.authorizationStatus == UNAuthorizationStatus.authorized {
                    // 알림설정이 들어갈 곳
                } else {
                    let alert = UIAlertController(title:"알림 등록", message:"알림이 허용되어 있지 않습니다", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "확인", style: .default)
                    alert.addAction(ok)
                    
                    self.present(alert, animated: false)
                    return
                }
            }
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

