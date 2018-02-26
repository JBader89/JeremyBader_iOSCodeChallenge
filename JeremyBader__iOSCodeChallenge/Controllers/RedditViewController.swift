//
//  RedditViewController.swift
//  JeremyBader__iOSCodeChallenge
//
//  Created by Jeremy Bader on 2/25/18.
//  Copyright © 2018 Jeremy Bader. All rights reserved.
//

import UIKit

class RedditViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate {

    private let cellId = "cellId"
    
    lazy var searchBar = UISearchBar(frame: CGRect.zero)
    lazy var tableView: UITableView = {
        let tv = UITableView(frame: .zero, style: .plain)
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .lightGray
        tv.delegate = self
        tv.dataSource = self
        tv.register(PostTableViewCell.self, forCellReuseIdentifier: self.cellId)
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
        configureTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func configureNavBar() {
        searchBar.searchBarStyle = UISearchBarStyle.minimal
        searchBar.placeholder = "funny"
        searchBar.sizeToFit()
        searchBar.isTranslucent = false
        searchBar.delegate = self
        self.navigationItem.titleView = searchBar
        
        let searchButton = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(self.searchButtonPressed(_:)))
        self.navigationItem.rightBarButtonItem = searchButton
    }
    
    @objc func searchButtonPressed(_ barButtonItem: UIBarButtonItem) {
    }
    
    func configureTableView() {
        self.view.addSubview(tableView)
        setupAutoLayout()
    }
    
    func setupAutoLayout() {
        
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellId, for: indexPath) as! PostTableViewCell
        return cell
    }

}

