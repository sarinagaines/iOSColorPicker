//
//  ColorPickerController.swift
//  Color Picker
//
//  Created by Sarina Gaines on 3/9/20.
//  Copyright © 2020 Sarina Gaines. All rights reserved.
//

import UIKit

class ColorPickerController: UIViewController{
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    struct TableViewColor{
        let color: String
        let background: UIColor
    }
       
    private let dataSource = [
        TableViewColor(color: "red", background: UIColor.red),
        TableViewColor(color: "orange",background: UIColor.orange),
        TableViewColor(color: "yellow", background: UIColor.yellow),
        TableViewColor(color: "green", background: UIColor.green),
        TableViewColor(color: "blue", background: UIColor.blue),
        TableViewColor(color: "purple", background: UIColor.purple),
        TableViewColor(color:"brown", background: UIColor.brown)]
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
    pickerView.dataSource = self
    pickerView.delegate = self

}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
    
extension ColorPickerController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return dataSource.count
    }
        
   func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text = dataSource[row].color
        detailLabel.backgroundColor = dataSource[row].background
        self.view.backgroundColor = dataSource[row].background
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent cmoponenet: Int) -> String?{
        return dataSource[row].color
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


