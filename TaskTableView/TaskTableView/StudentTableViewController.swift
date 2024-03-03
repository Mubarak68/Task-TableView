//
//  ViewController.swift
//  TaskTableView
//
//  Created by Mubarak Aloraifan on 03/03/2024.
//

import UIKit
import SnapKit

class StudentTableViewController: UITableViewController {
    
    var students : [Student] = [Student(name: "Mubarak", gpa: 3.82, profileImage: "Bele"),
                               Student(name: "Mohammed", gpa: 2.65, profileImage: "mohammedabdu")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return students.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let student = students[indexPath.row]

        cell.textLabel?.text = "Student: \(student.name), GPA: \(student.gpa)"
        cell.imageView?.image = UIImage(named: student.profileImage)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let detailVC = DetailsViewController()

        let student = students[indexPath.row]
        detailVC.students = student

        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}
