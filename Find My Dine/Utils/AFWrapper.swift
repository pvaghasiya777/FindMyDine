

import UIKit
import Alamofire

class AFWrapper: NSObject
{
    class func requestGETURL(_ strURL: String, headers : [String : String]?,params : [String : String]?, success:@escaping (Data,JSON) -> Void, failure:@escaping (Error) -> Void)
    {
        let final_strURL : String = strURL
        print(final_strURL)
        Alamofire.request(URL(string: strURL)!, method: .get, parameters: params, headers: headers).responseJSON { (responseObject) -> Void in
            print(responseObject)
            if responseObject.result.isSuccess {
                success(responseObject.data!,JSON(responseObject.result.value!))
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
    class func requestGETURL_01(_ strURL: String,headers : [String : String]?,params : [String : String]?,success:@escaping (Data) -> Void, failure:@escaping (Error) -> Void)
       {
           let final_strURL : String = strURL
           print(final_strURL)
           Alamofire.request(URL(string: strURL)!, method: .get, parameters: params, headers: headers).responseJSON { (responseObject) -> Void in
               
               
               if responseObject.result.isSuccess {
                   success(responseObject.data!)
               }
               if responseObject.result.isFailure {
                   let error : Error = responseObject.result.error!
                   failure(error)
               }
           }
       }
    class func requestPOSTURL(_ strURL : String, params : Parameters, headers : [String : String]?, success:@escaping (Data,JSON) -> Void, failure:@escaping (Error) -> Void){

        let final_strURL : String = strURL 
        print(final_strURL)
        Alamofire.request(final_strURL, method: .post, parameters: params, encoding: URLEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            print(responseObject)
            if responseObject.result.isSuccess {
                success(responseObject.data!,JSON(responseObject.result.value!))
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
    
    class func requestPOSTURL1(url_request : URLRequest, success:@escaping (Data,JSON) -> Void, failure:@escaping (Error) -> Void){
        
        Alamofire.request(url_request).responseJSON { (responseObject) in
            if responseObject.result.isSuccess {
                success(responseObject.data!,JSON(responseObject.result.value!))
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
}

