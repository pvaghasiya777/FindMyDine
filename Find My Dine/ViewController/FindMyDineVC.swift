//
//  FindMyDineVC.swift
//  Find My Dine
//
//  Created by Captain on 07/06/20.
//  Copyright © 2020 Captain. All rights reserved.
//

import UIKit

class FindMyDineVC: UIViewController,SetSearchDetail
{
    //MARK:- IBOutlet
    @IBOutlet weak var Barbtn_Refresh: UIBarButtonItem!
    @IBOutlet weak var tbl_Resturants: UITableView!
    @IBOutlet weak var Barbtn_Search: UIBarButtonItem!
    //MARK:- Variable
    var Arr_ResturantDetail : NSMutableArray = NSMutableArray()
    var Str_City_id : String = "38"
    var Str_City_Name : String = "Surat"
    //MARK:- Life Cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       self.Initialization()
       self.navigationItem.title = "Find My Dine"
    }
    override func viewWillDisappear(_ animated: Bool) {
       super.viewWillDisappear(animated)
       self.navigationItem.title = ""
    }
    //MARK:- Inintlization
    func Initialization() {
        self.tbl_Resturants.register(UINib(nibName: "Resturant_Cell", bundle: nil), forCellReuseIdentifier: "Resturant_Cell")
//        ServiceCall.shareInstance.get_Restaurants_HOME(viewConroller: self, entity_id: Str_City_id, CityName: Str_City_Name)
        ServiceCall.shareInstance.get_Category(viewConroller: self, entity_id: Str_City_id, CityName: Str_City_Name)

    }
    func SetDetail(City_id: Int, City_Name: String) {
        self.Str_City_id = String(describing:City_id)
        self.Str_City_Name = City_Name
    }
    @IBAction func Barbtn_Search_Click(_ sender: UIBarButtonItem) {
   
        let Next = Config.StoryBoard.instantiateViewController(withIdentifier: "SearchVC") as! SearchVC
        Next.delegate = self
        self.navigationController?.pushViewController(Next, animated: true)
    }
    @IBAction func Barbtn_Refresh_Click(_ sender: UIBarButtonItem) {
        self.Initialization()
    }
}
extension FindMyDineVC : UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.Arr_ResturantDetail.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : Resturant_Cell = tableView.dequeueReusableCell(withIdentifier: "Resturant_Cell") as! Resturant_Cell
        cell.Display_Cell(viewController : self , indexPath : indexPath)
        cell.isUserInteractionEnabled = false
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
}
