//
//  ViewController.swift
//  MyFirstProject
//
//  Created by JIN LEE on 3/7/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var resolutionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.placeholder = "텍스트를 입력하세요"
        
        resolutionButton.setTitle("다짐 보러 가기", for: .normal)
        // 이건 왜 됨..?
        resolutionButton.setTitleColor(.orange, for: .normal)
        // 안 먹는 이유는 스토리 보드가 우선시 되는 걸까용..
        resolutionButton.setTitleColor(.red, for: .selected)
        // 이 코드는 왜 안 먹을까...
        resolutionButton.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
    }
    
    @IBAction func didTabMyButton(_ sender: Any) {
        
        textField.resignFirstResponder()
        
        guard let text = textField.text, !text.isEmpty else {
            // 텍스트가 비어있을 경우 처리
            return
        }
        
        // 텍스트 저장 로직
        saveText(text)
    }
    
    func saveText(_ text: String) {
        // UserDefaults를 사용하여 텍스트 저장
        UserDefaults.standard.set(text, forKey: "savedText")
    }
}

