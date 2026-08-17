//
//  NotificationViewController.swift
//  appTel
//
//  Created by Abirami Muni on 8/15/26.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDataSource

{

    @IBOutlet weak var tableView: UITableView!
    
    let notifications = [
        ("Rent Reminder", "Your rent payment of $950 is due soon."),
        ("Payment Successful", "Your June rent payment was completed."),
        ("New Message", "You have a new message from your landlord."),
        ("Maintenance Update", "Your maintenance request has been accepted."),
        ("Payment Due", "Your next rent payment is due in 3 days."),
        ("Lease Update", "Your lease agreement has been updated."),
        ("Inspection Reminder", "Property inspection is scheduled for tomorrow."),
        ("New Message", "Your landlord replied to your request."),
        ("Payment Received", "Your rent payment has been received."),
        ("Maintenance Scheduled", "A technician will arrive tomorrow at 10 AM."),
        ("Rent Reminder", "Your upcoming rent payment is due next week."),
        ("Document Available", "A new rental document is ready to view."),
        ("Request Completed", "Your maintenance request has been completed."),
        ("Security Notice", "Your account password was recently updated."),
        ("Welcome", "Thank you for using our rental app.")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.rowHeight = 75
    }

    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return notifications.count
    }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(
            withIdentifier: "notificationCell",
            for: indexPath
        )

        let notification = notifications[indexPath.row]

        cell.textLabel?.text = notification.0
        cell.detailTextLabel?.text = notification.1

        return cell
    }
}
