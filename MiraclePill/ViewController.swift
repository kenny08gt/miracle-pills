//
//  ViewController.swift
//  MiraclePill
//
//  Created by LionMane Software on 2/13/17.
//  Copyright © 2017 LionMane Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTxt: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successView: UIImageView!

    
    let states = ["Alaska","Arkansas","Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPress(_ sender: Any) {
        hideOtherFields(state: true)
        statePicker.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        hideOtherFields(state: false)
    }
    @IBAction func buyNowPress(_ sender: Any) {
      successView.isHidden = false
    }
    
    func hideOtherFields(state: Bool){
        countryLbl.isHidden = state
        countryTxt.isHidden = state
        zipCodeLbl.isHidden = state
        zipCodeTxt.isHidden = state
    }
    
    }

