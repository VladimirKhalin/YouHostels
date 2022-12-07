//
//  ViewController.swift
//  YouHostels
//
//  Created by Vladimir Khalin on 02.12.2022.
//

import UIKit


final class WlcomeViewController: UIViewController {
    @IBOutlet var dateFromPicker: UIDatePicker!
    @IBOutlet var dateEndPicker: UIDatePicker!
    @IBOutlet var cityName: UITextField!
    @IBOutlet var guestCount: UITextField!
    
    private let currentRegions = ["Москва", "Санкт-Петербург", "Екатеринбург"]
    private var guests = 2
    private let dataStore = Hostels.shared
    private var hostelsList: [Hostel] = []
    private var dayIn = ""
    private var dayOut = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFromPicker.minimumDate = Date()
        let datePlusOneDay = Calendar.current.date(byAdding: .day, value: 1, to: dateFromPicker.date)
        dateEndPicker.minimumDate = datePlusOneDay
        
        
        
        
        // let dateFormater: NSDateFormatter = NSDateFormatter()
        //   dateFormater.dateFormat = "MM/dd/yyyy"
        //  let stringFromDate: String = dateFormatter.string(from: self.dateEndPicker.date) as String
    }
    
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
    
    @IBAction func serchButtonPresed() {
        guard currentRegions.contains(cityName.text!) else {
            showAlert("Внмание!", "Поиск возможен по городам: Москва, Санкт-Петербург, Екатеринбург");
            return }
        
        for hostel in dataStore.hostels {
            if hostel.sityName.contains(cityName.text ?? "Москва") {
                hostelsList.append(hostel)
            }
            print(hostelsList.count)
        }
        dateSave()
        self.performSegue(withIdentifier: "nextView", sender: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        guard let currentNumber = Int(guestCount.text ?? "0") else { return }
        guests = currentNumber
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navVC = segue.destination as? UINavigationController else { return }
        guard let tableVC = navVC.topViewController as? HostelListTableViewController else { return }
        tableVC.hostelsList = hostelsList
        tableVC.dateIn = dayIn
        tableVC.dateOut = dayOut
        tableVC.guests = guests
    }
    
    
    private func dateSave() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.dateFormat = "EE, dd.MMMM.yyyy"
        
        
        dayIn = dateFormatter.string(from: dateFromPicker.date)
        dayOut = dateFormatter.string(from: dateEndPicker.date)
       // print("Дата заезда: \(dayIn)")
        
        //dateFromPicker.date = dateFormatter.date(from: currentDateString)!
        
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
// :MARK - End Edit textField
extension WlcomeViewController: UITextFieldDelegate {
    
}
