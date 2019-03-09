//
//  ViewController.swift
//  day-5
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
    
var country=[String]()
    var state=[Int]()
    @IBOutlet weak var lbl1: UILabel!
      @IBOutlet weak var piker1: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        piker1.delegate=self
        piker1.dataSource=self
        country.append("India")
        country.append("UK")
        country.append("China")
        country.append("USA")
        country.append("Germany")
        country.append("France")
        country.append("Spain")
        country.append("Mexico")
        country.append("Brazil")
        country.append("South Africa")
        country.append("Bangladesh")
        country.append("Australia")
        state.append(1)
        state.append(2)
        state.append(3)
        state.append(4)
        state.append(5)
        state.append(6)
        state.append(7)
        state.append(8)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func datepicker1(_ sender: UIDatePicker) {
        print(sender.date)
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component==0)
        {return self.country.count}
        else{ return self.state.count}
       
       
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component==0)
        {return String(self.country[row])}
        else{ return String(self.state[row])}
        
     //   return "com \(component)-ROW:\(row)"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component==0)
        {
            self.lbl1.text = "Country: \(self.country[self.piker1.selectedRow(inComponent: 0)]), City: \(self.state[self.piker1.selectedRow(inComponent: 1)])"
        }
        else{ return self.lbl1.text=String(self.state[row])}
    }
    
    
}

