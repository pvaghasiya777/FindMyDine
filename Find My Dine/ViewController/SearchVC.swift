//
//  SearchVC.swift
//  Find My Dine
//
//  Created by Captain on 07/06/20.
//  Copyright © 2020 Captain. All rights reserved.
//

import UIKit
protocol SetSearchDetail : class {
    func SetDetail(City_id : Int,City_Name : String)
}
class SearchVC: UIViewController
{
    //MARK:- IBOutlet
    @IBOutlet weak var txt_Searchbar: UISearchBar!
    @IBOutlet weak var tbl_CitySearch: UITableView!
    //MARK:- Variable
    weak var delegate : SetSearchDetail?
    var searchActive : Bool = false
    var searchResults : NSMutableArray = NSMutableArray()
    var arr_Search : NSMutableArray = NSMutableArray()
    //MARK:- Life Cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.tbl_CitySearch.register(UINib(nibName: "SearchCell", bundle: nil), forCellReuseIdentifier: "SearchCell")
        tbl_CitySearch.allowsSelection = true
        self.txt_Searchbar.delegate = self
        self.tbl_CitySearch.delegate = self
        self.tbl_CitySearch.dataSource = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Search City"
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.title = ""
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
            super.touchesBegan(touches, with: event)
            searchActive = false;
        }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.view.endEditing(true)
        self.searchActive = false
    }
}
extension SearchVC : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.arr_Search.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SearchCell = tableView.dequeueReusableCell(withIdentifier: "SearchCell") as! SearchCell
        cell.Display_Cell(viewController: self, indexPath: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.lightGray
        return headerView
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Obj_Search = self.arr_Search[indexPath.section] as! CitySearchModel
        self.delegate?.SetDetail(City_id: Obj_Search.id!, City_Name: Obj_Search.name!)
        self.navigationController?.popViewController(animated: true)
    }
    
}
extension SearchVC : UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchActive = true;
    }
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar){
        searchActive = false;
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchActive
        {
            ServiceCall.shareInstance.get_Restaurants_HOME_Search(viewConroller: self, SearchString: searchText)
        }
    }
}
