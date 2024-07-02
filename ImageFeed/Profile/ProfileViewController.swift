//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Алексей Сиденко on 28.06.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let profileImageView = UIImageView()
    private let logoutBtn = UIButton.systemButton(
        with: UIImage(named: "user_logout")!,
        target: ProfileViewController.self,
        action: nil
    )
    private let profileNameLabel = UILabel()
    private let profileMailLabel = UILabel()
    private let profileStatusLabel = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .ypBlack
        addProfileImage()
        addLogoutButton()
        addProfileLabels()
    }
    
    private func addProfileImage() {
        let profileImage = UIImage(named: "profile_photo")
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.image = profileImage
        view.addSubview(profileImageView)
        profileImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    }
    
    private func addLogoutButton() {
        logoutBtn.translatesAutoresizingMaskIntoConstraints = false
        logoutBtn.addTarget(self, action: #selector(didTapLogoutButton), for: .touchUpInside)
        view.addSubview(logoutBtn)
        logoutBtn.tintColor = .ypRed
        logoutBtn.widthAnchor.constraint(equalToConstant: 24).isActive = true
        logoutBtn.heightAnchor.constraint(equalToConstant: 24).isActive = true
        logoutBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        logoutBtn.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
    }
    
    private func addProfileLabels() {
        profileNameLabel.text = "Екатерина Новикова"
        profileNameLabel.textColor = .ypWhite
        profileNameLabel.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileNameLabel)
        
        profileMailLabel.text = "@ekaterina_nov"
        profileMailLabel.textColor = .ypGray
        profileMailLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        profileMailLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileMailLabel)
        
        profileStatusLabel.text = "Hello, world!"
        profileStatusLabel.textColor = .ypWhite
        profileStatusLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        profileStatusLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileStatusLabel)
        
        NSLayoutConstraint.activate([
            profileNameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8),
            profileNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            profileMailLabel.topAnchor.constraint(equalTo: profileNameLabel.bottomAnchor, constant: 8),
            profileMailLabel.leadingAnchor.constraint(equalTo: profileNameLabel.leadingAnchor),
            profileStatusLabel.topAnchor.constraint(equalTo: profileMailLabel.bottomAnchor, constant: 8),
            profileStatusLabel.leadingAnchor.constraint(equalTo: profileNameLabel.leadingAnchor),
        ])
    }
    
    @objc 
    private func didTapLogoutButton() {
        let alert = UIAlertController(
            title: "Пока, пока!",
            message: "Уверены что хотите выйти?",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Да", style: .default) {_ in
            print("LogOut")
        })
        alert.addAction(UIAlertAction(title: "Нет", style: .default) {_ in
            print("Stay")
        })
        self.present(alert, animated: true, completion: nil)
    }
}
