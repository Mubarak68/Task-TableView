//
//  DetailsViewController.swift
//  TaskTableView
//
//  Created by Mubarak Aloraifan on 03/03/2024.
//

import UIKit
import SnapKit

class DetailsViewController: UIViewController{
    
     var students: Student?

     private let studentNumberLabel = UILabel()
     private let studentGpaLabel = UILabel()
     private let studentImageLabel = UIImageView()

     override func viewDidLoad() {
         super.viewDidLoad()
         setupViews()
         setupLayout()
         configureWithStudent()
     }

     private func setupViews() {
         view.backgroundColor = .white

             studentNumberLabel.font = .systemFont(ofSize: 16, weight: .medium)
             studentGpaLabel.font = .systemFont(ofSize: 16, weight: .medium)

             view.addSubview(studentNumberLabel)
             view.addSubview(studentGpaLabel)
             view.addSubview(studentImageLabel)
     }

     private func setupLayout() {
         studentImageLabel.snp.makeConstraints { make in
              make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
              make.centerX.equalToSuperview()
              make.width.height.equalTo(100)  // Example size, adjust as needed
          }

          studentNumberLabel.snp.makeConstraints { make in
              make.top.equalTo(studentImageLabel.snp.bottom).offset(20)
              make.centerX.equalToSuperview()
          }

          studentGpaLabel.snp.makeConstraints { make in
              make.top.equalTo(studentNumberLabel.snp.bottom).offset(20)
              make.centerX.equalToSuperview()
          }
     }

     private func configureWithStudent() {
         studentNumberLabel.text = "Student Name: \(students?.name ?? "N/A")"
         studentGpaLabel.text = "GPA: \(students?.gpa ?? 0.0)/4"
         studentImageLabel.image = UIImage(named: students?.profileImage ?? "N/A")
     }
 }

