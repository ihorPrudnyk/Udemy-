//
//  SecondViewController.swift
//  многостраничние приложения
//
//  Created by Ihor on 19.01.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var selectedStateLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var selectedSwitchState = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        selectedStateLabel.text = selectedSwitchState ? "ON" : "OFF"
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 20
    }
    

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showThirdScreen" else {return}
        guard let destVC = segue.destination as? ThirdViewController else {return}
        destVC.selectedValue = Int(slider.value)
    }
    

}
