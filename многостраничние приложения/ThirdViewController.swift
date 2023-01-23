//
//  ThirdViewController.swift
//  многостраничние приложения
//
//  Created by Ihor on 19.01.2023.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var selectedSliderValue: UILabel!
    
    var selectedValue: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let value = selectedValue{
            selectedSliderValue.text = "\(value)"
        }else{
            selectedSliderValue.text = "NONE"
        }

    }
    

    @IBAction func backRootPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
