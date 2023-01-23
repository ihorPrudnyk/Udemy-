//
//  FirstViewController.swift
//  многостраничние приложения
//
//  Created by Ihor on 19.01.2023.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var selectedStateswitch: UISwitch!
    @IBOutlet weak var sliderValueLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First screen"
        
    }
    
    @IBAction func backToFirstSceen(_ segue: UIStoryboardSegue){
        guard let secondCV = segue.source as? SecondViewController else {return}
        sliderValueLable.text = "\(Int(secondCV.slider.value))"
    }
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondScreen"{
        if let destinitionVC = segue.destination as? SecondViewController{
            destinitionVC.selectedSwitchState = selectedStateswitch.isOn
            }
        }
    }
    

}
