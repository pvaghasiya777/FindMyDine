//
//  ServiceCall.swift
//  Trendy Coconut
//
//  Created by PanktiPC on 04/11/19.
//  Copyright © 2019 Meet PC. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD
class ServiceCall: NSObject
{
    static let shareInstance = ServiceCall()
    func get_Restaurants_HOME(viewConroller : UIViewController,entity_id:String,CityName : String)
    {
        if AppDelegate.NetworkRechability() {
            SVProgressHUD.show(withStatus: "Loading...")
            let Home_VC = viewConroller as! FindMyDineVC
            AFWrapper.requestGETURL(Api_Urls.Get_All_Resturant, headers: ["user-key":Api_Urls.User_Key], params: ["entity_id":entity_id,
                 "entity_type":"city",
                 "q":CityName],
            success:
            { (responseObject, JSONObject) in
                SVProgressHUD.dismiss()
                if (JSONObject.object as! NSDictionary).value(forKey: "results_start") as! Int == 0 {
                    Home_VC.Arr_ResturantDetail = NSMutableArray(array: (JSONObject.object as! NSDictionary).value(forKey: "restaurants")as! NSArray)
                    print(Home_VC.Arr_ResturantDetail.count)
                    if Home_VC.Arr_ResturantDetail.count == 0 {
                        TableViewHelper.EmptyMessage(message: "No data available", tableview: Home_VC.tbl_Resturants, textColor: UIColor.black)
                        } else {
                            TableViewHelper.EmptyMessage(message: "", tableview: Home_VC.tbl_Resturants, textColor: UIColor.clear)
                        }
                        Home_VC.tbl_Resturants.delegate = Home_VC
                        Home_VC.tbl_Resturants.dataSource = Home_VC
                        Home_VC.tbl_Resturants.reloadData()
                    }
            })
            { (error) in
                SVProgressHUD.dismiss()
                print(error.localizedDescription)
            }
        } else {
            Utils.showToastWithMessageAtCenter(message: "No Internet")
        }
    }
    func get_Restaurants_HOME_Search(viewConroller : UIViewController,SearchString : String)
    {
        if AppDelegate.NetworkRechability() {
            SVProgressHUD.show(withStatus: "Loading...")
            let Search = viewConroller as! SearchVC
            AFWrapper.requestGETURL(Api_Urls.Get_City_search, headers: ["user-key":Api_Urls.User_Key], params: ["q":SearchString],
            success:
            { (responseObject, JSONObject) in
                SVProgressHUD.dismiss()
                if (JSONObject.object as! NSDictionary).value(forKey: "status") as! String == "success" {
                    var Arr_Final_Data : NSMutableArray = NSMutableArray()
                    let Arr_Data : NSMutableArray = NSMutableArray(array: (JSONObject.object as! NSDictionary).value(forKey: "location_suggestions") as! NSArray)
                    let obj_Restaurants = CitySearchModel()
                    Arr_Final_Data = obj_Restaurants.Load_Data_To_Array(arr_Data: Arr_Data)
                    Search.arr_Search = Arr_Final_Data
                    if Search.arr_Search.count == 0 {
                        TableViewHelper.EmptyMessage(message: "No data available", tableview: Search.tbl_CitySearch, textColor: UIColor.black)
                        } else {
                            TableViewHelper.EmptyMessage(message: "", tableview: Search.tbl_CitySearch, textColor: UIColor.clear)
                        }
                        Search.tbl_CitySearch.delegate = Search
                        Search.tbl_CitySearch.dataSource = Search
                        Search.tbl_CitySearch.reloadData()
                    
                    }
            })
            { (error) in
                SVProgressHUD.dismiss()
                print(error.localizedDescription)
            }
        } else {
            Utils.showToastWithMessageAtCenter(message: "No Internet")
        }
    }
    func get_Category(viewConroller : UIViewController,entity_id:String,CityName : String)
    {
        SVProgressHUD.show(withStatus: "Loading...")
        if AppDelegate.NetworkRechability() {
            AFWrapper.requestGETURL_01(Api_Urls.Get_All_Resturant, headers: ["user-key":Api_Urls.User_Key], params: ["entity_id":entity_id,
            "entity_type":"city",
            "q":CityName],success:
                { (responseObject) in
                    do {
                        SVProgressHUD.dismiss()
                        let results = try JSONDecoder().decode(Welcome.self, from: responseObject)
                        print(results.restaurant)
//                        completion(results.restaurant, nil)
                    }catch let jsonErr{
                        print("json error : \(jsonErr.localizedDescription)")
                    }
            })
            { (error) in
                SVProgressHUD.dismiss()
                print(error.localizedDescription)
            }
        } else{
            SVProgressHUD.dismiss()
            Utils.showToastWithMessageAtCenter(message:"No Internet Availabel")
        }
    }
}

