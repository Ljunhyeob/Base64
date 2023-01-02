//
//  ViewController.swift
//  Base64Test
//
//  Created by 이준협 on 2023/01/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let text = "text"
        let data = text.data(using: .utf8)
        var encodeString = ""
        
        if let encode = data?.base64EncodedString(){
            print("encode : ", encode)
            encodeString = encode
            
        }
        
        let encodeData = Data(base64Encoded: encodeString)
        
        if let decode = String(data: data!, encoding: .utf8){
            print("decode: ", decode)
        }
    }


}

