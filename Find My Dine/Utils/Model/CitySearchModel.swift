//
//  RootClass.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on June 5, 2020

import Foundation


class CitySearchModel : NSObject, NSCoding{

    var countryFlagUrl : String!
    var countryId : Int!
    var countryName : String!
    var discoveryEnabled : Int!
    var hasGoOutTab : Int!
    var hasNewAdFormat : Int!
    var id : Int!
    var isState : Int!
    var name : String!
    var shouldExperimentWith : Int!
    var stateCode : String!
    var stateId : Int!
    var stateName : String!

    override init() { }
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        countryFlagUrl = dictionary["country_flag_url"] as? String
        countryId = dictionary["country_id"] as? Int
        countryName = dictionary["country_name"] as? String
        discoveryEnabled = dictionary["discovery_enabled"] as? Int
        hasGoOutTab = dictionary["has_go_out_tab"] as? Int
        hasNewAdFormat = dictionary["has_new_ad_format"] as? Int
        id = dictionary["id"] as? Int
        isState = dictionary["is_state"] as? Int
        name = dictionary["name"] as? String
        shouldExperimentWith = dictionary["should_experiment_with"] as? Int
        stateCode = dictionary["state_code"] as? String
        stateId = dictionary["state_id"] as? Int
        stateName = dictionary["state_name"] as? String
    }

    func Load_Data_To_Array(arr_Data:NSMutableArray) -> NSMutableArray {
       let Arr_Final_Data : NSMutableArray = NSMutableArray()
       for obj_Data in arr_Data {
           let obj_Search = CitySearchModel(fromDictionary: obj_Data as! [String : Any])
           Arr_Final_Data.add(obj_Search)
       }
           return Arr_Final_Data
    }
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if countryFlagUrl != nil{
            dictionary["country_flag_url"] = countryFlagUrl
        }
        if countryId != nil{
            dictionary["country_id"] = countryId
        }
        if countryName != nil{
            dictionary["country_name"] = countryName
        }
        if discoveryEnabled != nil{
            dictionary["discovery_enabled"] = discoveryEnabled
        }
        if hasGoOutTab != nil{
            dictionary["has_go_out_tab"] = hasGoOutTab
        }
        if hasNewAdFormat != nil{
            dictionary["has_new_ad_format"] = hasNewAdFormat
        }
        if id != nil{
            dictionary["id"] = id
        }
        if isState != nil{
            dictionary["is_state"] = isState
        }
        if name != nil{
            dictionary["name"] = name
        }
        if shouldExperimentWith != nil{
            dictionary["should_experiment_with"] = shouldExperimentWith
        }
        if stateCode != nil{
            dictionary["state_code"] = stateCode
        }
        if stateId != nil{
            dictionary["state_id"] = stateId
        }
        if stateName != nil{
            dictionary["state_name"] = stateName
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        countryFlagUrl = aDecoder.decodeObject(forKey: "country_flag_url") as? String
        countryId = aDecoder.decodeObject(forKey: "country_id") as? Int
        countryName = aDecoder.decodeObject(forKey: "country_name") as? String
        discoveryEnabled = aDecoder.decodeObject(forKey: "discovery_enabled") as? Int
        hasGoOutTab = aDecoder.decodeObject(forKey: "has_go_out_tab") as? Int
        hasNewAdFormat = aDecoder.decodeObject(forKey: "has_new_ad_format") as? Int
        id = aDecoder.decodeObject(forKey: "id") as? Int
        isState = aDecoder.decodeObject(forKey: "is_state") as? Int
        name = aDecoder.decodeObject(forKey: "name") as? String
        shouldExperimentWith = aDecoder.decodeObject(forKey: "should_experiment_with") as? Int
        stateCode = aDecoder.decodeObject(forKey: "state_code") as? String
        stateId = aDecoder.decodeObject(forKey: "state_id") as? Int
        stateName = aDecoder.decodeObject(forKey: "state_name") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if countryFlagUrl != nil{
            aCoder.encode(countryFlagUrl, forKey: "country_flag_url")
        }
        if countryId != nil{
            aCoder.encode(countryId, forKey: "country_id")
        }
        if countryName != nil{
            aCoder.encode(countryName, forKey: "country_name")
        }
        if discoveryEnabled != nil{
            aCoder.encode(discoveryEnabled, forKey: "discovery_enabled")
        }
        if hasGoOutTab != nil{
            aCoder.encode(hasGoOutTab, forKey: "has_go_out_tab")
        }
        if hasNewAdFormat != nil{
            aCoder.encode(hasNewAdFormat, forKey: "has_new_ad_format")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if isState != nil{
            aCoder.encode(isState, forKey: "is_state")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if shouldExperimentWith != nil{
            aCoder.encode(shouldExperimentWith, forKey: "should_experiment_with")
        }
        if stateCode != nil{
            aCoder.encode(stateCode, forKey: "state_code")
        }
        if stateId != nil{
            aCoder.encode(stateId, forKey: "state_id")
        }
        if stateName != nil{
            aCoder.encode(stateName, forKey: "state_name")
        }
    }
}
