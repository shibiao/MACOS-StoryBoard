//
//  ViewController.swift
//  Day1
//
//  Created by sycf_ios on 2016/11/29.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

import Cocoa

let on = 1//开
let off = 0//关


class ViewController: NSViewController {
    var num=1
    @IBOutlet weak var nameTextField: NSTextField!
    @IBOutlet weak var ageCombox: NSComboBox!
    @IBOutlet weak var manBtn: NSButton!
    @IBOutlet weak var womanBtn: NSButton!
    @IBOutlet var resultTextView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.resignFirstResponder()
        addCombox()
    }
    @IBAction func submitPersonalMessages(_ sender: Any) {
        
        resultTextView.string="姓名:" + nameTextField.stringValue + "\n"
        + "年龄:" + ageCombox.stringValue + "\n"
        + "性别:" + sexValue()
        
    }
    func sexValue() -> String {
        if manBtn.state == on {
            return "男"
        }else{
            return "女"
        }
    }
    @IBAction func chooseMan(_ sender: Any) {
        if womanBtn.state == on {
            womanBtn.state = off
        }
        manBtn.state=on;
    }
    @IBAction func chooseWoman(_ sender: Any) {
        if manBtn.state == on {
            manBtn.state = off
        }
        womanBtn.state=on;
    }
    
    func addCombox() {
        for _ in 1..<50 {
            ageCombox.addItem(withObjectValue: num)
            num += 1
        }
        ageCombox.selectItem(at: 24)
        ageCombox.scrollItemAtIndexToTop(24)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

