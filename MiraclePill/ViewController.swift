//
//  ViewController.swift
//  MiraclePill
//
//  Created by Cody Condon on 2016-09-09.
//  Copyright © 2016 Cody Condon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var miraclePillImage: UIImageView!
    @IBOutlet weak var miraclePillsLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var dividerLbl: UIView!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var streetAddressLbl: UILabel!
    @IBOutlet weak var streetAddressTextField: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxtField: UITextField!
    
    
    let states = [ "AK - Alaska",
    "AL - Alabama",
    "AR - Arkansas",
    "AS - American Samoa",
    "AZ - Arizona",
    "CA - California",
    "CO - Colorado",
    "CT - Connecticut",
    "DC - District of Columbia",
    "DE - Delaware",
    "FL - Florida",
    "GA - Georgia",
    "GU - Guam",
    "HI - Hawaii",
    "IA - Iowa",
    "ID - Idaho",
    "IL - Illinois",
    "IN - Indiana",
    "KS - Kansas",
    "KY - Kentucky",
    "LA - Louisiana",
    "MA - Massachusetts",
    "MD - Maryland",
    "ME - Maine",
    "MI - Michigan",
    "MN - Minnesota",
    "MO - Missouri",
    "MS - Mississippi",
    "MT - Montana",
    "NC - North Carolina",
    "ND - North Dakota",
    "NE - Nebraska",
    "NH - New Hampshire",
    "NJ - New Jersey",
    "NM - New Mexico",
    "NV - Nevada",
    "NY - New York",
    "OH - Ohio",
    "OK - Oklahoma",
    "OR - Oregon",
    "PA - Pennsylvania",
    "PR - Puerto Rico",
    "RI - Rhode Island",
    "SC - South Carolina",
    "SD - South Dakota",
    "TN - Tennessee",
    "TX - Texas",
    "UT - Utah",
    "VA - Virginia",
    "VI - Virgin Islands",
    "VT - Vermont",
    "WA - Washington",
    "WI - Wisconsin",
    "WV - West Virginia",
    "WY - Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryTextField.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTextField.isHidden = true
        buyNowBtn.isHidden = true
        
    }
    
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        successImage.isHidden = false
        stateLbl.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        buyNowBtn.isHidden = true
        countryLbl.isHidden = true
        countryTextField.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTextField.isHidden = true
        miraclePillImage.isHidden = true
        miraclePillsLbl.isHidden = true
        priceLbl.isHidden = true
        dividerLbl.isHidden = true
        fullNameLbl.isHidden = true
        fullNameTextField.isHidden = true
        streetAddressLbl.isHidden = true
        streetAddressTextField.isHidden = true
        cityLbl.isHidden = true
        cityTxtField.isHidden = true
        
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
        statePickerBtn.setTitle(states[row], for: UIControlState()) //UIControlState.normal
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryTextField.isHidden = false
        zipCodeLbl.isHidden = false
        zipCodeTextField.isHidden = false
        buyNowBtn.isHidden = false
        
    }
}

