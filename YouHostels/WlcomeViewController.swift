//
//  ViewController.swift
//  YouHostels
//
//  Created by Vladimir Khalin on 02.12.2022.
//

import UIKit
//import DropDown

final class WlcomeViewController: UIViewController {
    @IBOutlet var dateFromPicker: UIDatePicker!
    @IBOutlet var dateEndPicker: UIDatePicker!
    @IBOutlet var cityName: UITextField!
    @IBOutlet var guestCount: UITextField!
    
    private var guests = 2
    
    @IBAction func plusGuest() {
        guard guests < 6 else {
            showAlert("Внмание!", "Превышено максимальное число гостей в одном бронировании");
            return }
        guests += 1
        guestCount.text = String(guests)
    }
    
    @IBAction func minusGuest() {
        guard guests > 1 else {
            showAlert("Внмание!", "Минимальное число гостей: 1 (один)");
            return }
        guests -= 1
        guestCount.text = String(guests)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFromPicker.minimumDate = Date()
        let datePlusOneDay = Calendar.current.date(byAdding: .day, value: 1, to: dateFromPicker.date)
        dateEndPicker.minimumDate = datePlusOneDay
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EE, dd MMMM yy"
        
        let currentDateString = dateFormatter.string(from: Date())
        print("Дата заезда: \(currentDateString)")
        
        dateFromPicker.date = dateFormatter.date(from: currentDateString)!
        
        
        // let dateFormater: NSDateFormatter = NSDateFormatter()
        //   dateFormater.dateFormat = "MM/dd/yyyy"
        //  let stringFromDate: String = dateFormatter.string(from: self.dateEndPicker.date) as String
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        guard let currentNumber = Int(guestCount.text ?? "0") else { return }
        guests = currentNumber
        view.endEditing(true)
    }
}

// :MARK - Alert Message
extension WlcomeViewController {
    private func showAlert(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
