//
//  HostelListTableViewController.swift
//  YouHostels
//
//  Created by Vladimir Khalin on 06.12.2022.
//

import UIKit

class HostelListTableViewController: UITableViewController {

    @IBOutlet var dateInHostel: UILabel!
    @IBOutlet var dateOutHostel: UILabel!
    
    var hostelsList: [Hostel] = []
    var dateIn = ""
    var dateOut = ""
    var guests: Int!
    var guestString = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateInHostel.text = ("Заезд: \(dateIn)")
        dateOutHostel.text = ("Выезд: \(dateOut)")
        if guests < 5 { guestString = true }
    }

    @IBAction func toolsButtonPresed(_ sender: UIButton) {
        showAlert("Внимание", "Данная фунция находится в разработке")
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hostelsList.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "hostelCell", for: indexPath) as! HostelListTableViewCell
        let currentHostel = hostelsList[indexPath.row]
        cell.hostelAvatar.image = UIImage(named: currentHostel.photos[0])
        
        // Если у хостела есть скидка появится лэйбл "sale"
        if currentHostel.saleBool {
            let saleView = setSale()
            cell.hostelAvatar.addSubview(saleView)
        }
        cell.hostelName.text = currentHostel.hostelName
        cell.hostelRating.text = ("Рейтнг: \(currentHostel.rating) Отзывы: \(currentHostel.fidbacks)")
        cell.cityCenterRage.text = ("Растояние до центра: \(currentHostel.cityCenter) км.")
        let allPrice = currentHostel.price * guests
        
        // Подставляем нужное значение в таблицу
        let guestText = (guestString ? "гостя" : "гостей")
        cell.price.text = ("от: \(allPrice)₽ за \(guests!) \(guestText)")
        
        // Если превышено количество свободных мест, делаем хостел неактивным
        if currentHostel.availableSeats <= guests {
            cell.contentView.alpha = 0.3
            cell.selectionStyle = .none
            let noVacancy = noVacancy()
            cell.contentView.addSubview(noVacancy)
        }
        return cell
    }
    
    private func setSale() -> UIView {
        let imageName = "sale"
        let image = UIImage(named: imageName)
        let saleView = UIImageView(image: image!)
        saleView.frame = CGRect(x: 2, y: 2, width: 75, height: 50)
        return saleView
    }
    
    private func noVacancy() -> UIView {
        let imageName = "noVacancy"
        let image = UIImage(named: imageName)
        let noVacancyView = UIImageView(image: image!)
        noVacancyView.frame = CGRect(x: 25, y: 20, width: 120, height: 75)
        return noVacancyView
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
// :MARK - Alert Message
extension HostelListTableViewController {
    private func showAlert(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
