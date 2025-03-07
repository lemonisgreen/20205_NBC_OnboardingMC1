//
//  MyResolutionViewController.swift
//  MyFirstProject
//
//  Created by JIN LEE on 3/7/25.
//

import UIKit

class MyResolutionViewController: UIViewController {
    
    @IBOutlet weak var myResoiutionBoard: UIImageView!
    @IBOutlet weak var myResolution: UILabel!
    @IBOutlet weak var myResolutionLable: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let savedText = UserDefaults.standard.string(forKey: "savedText") {
            // 불러온 텍스트로 UI 업데이트
            myResolution.text = savedText
        }
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR") // 한국어 로케일 설정
        formatter.dateFormat = "yyyy/MM/dd EEEE" // 년/월/일 요일 형식
        
        // 현재 날짜를 포맷에 맞게 변환
        let currentDateString = formatter.string(from: Date())
        
        myResolutionLable.text = "오늘의 다짐🦊 \n \(currentDateString)"
    }
}
