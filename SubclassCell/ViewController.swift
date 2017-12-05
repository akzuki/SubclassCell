//
//  ViewController.swift
//  SubclassCell
//
//  Created by Hai Phan on 12/5/17.
//  Copyright © 2017 Hai Phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let parentCellIdentifier = "ParentTableViewCell"
    fileprivate let subclassCellIdentifier = "SubclassTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: parentCellIdentifier, bundle: nil), forCellReuseIdentifier: parentCellIdentifier)
        tableView.register(UINib(nibName: parentCellIdentifier, bundle: nil), forCellReuseIdentifier: subclassCellIdentifier)
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: parentCellIdentifier, for: indexPath)
        return cell
    }
}

