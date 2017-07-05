//
//  ListViewController.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var listTableView: UITableView!{
        didSet{
            listTableView.delegate = self
            listTableView.dataSource = self
            listTableView.register(UINib.init(nibName: "DevelopperCell", bundle: nil), forCellReuseIdentifier: "DevelopperCell")
        }
    }

    // MARK: Properties
    
    var presenter: ListViewToPresenterProtocol?
    var developpersList: [DevelopperViewModel] = []

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.loadDevelopper()
    }
    
    
    #if DEBUG
    deinit{ print("🗑: ListViewController") }
    #endif
}


extension ListViewController: ListPresenterToViewProtocol {
    // TODO: implement view methods called by the presenter
    func reloadInterface(with devs: [DevelopperViewModel]) {
        developpersList = devs
        listTableView.reloadData()
    }
    
    func insert(Developper developper: DevelopperViewModel) {
        developpersList.append(developper)
        listTableView.reloadData()
    }
}

extension ListViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return developpersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DevelopperCell") as? DevelopperCell else{
            return UITableViewCell()
        }
        cell.titleLabel.text = developpersList[indexPath.row].name
        cell.subTitleLabel.text = developpersList[indexPath.row].client
        return cell
    }
}
