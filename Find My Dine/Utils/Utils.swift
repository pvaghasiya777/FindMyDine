
//
//  Utils.swift
//  Apps For Your Business
//
//  Created by Pankti on 13/02/17.
//  Copyright © 2017 Dungeon_Master. All rights reserved.
//

import UIKit
//import SKActivityIndicatorView

class Utils: NSObject
{
    //MARK:- Show Toast Message
    class func showToastWithMessageAtCenter(message: String) {
        SceneDelegate.shared?.window?.makeToast(message, duration: 1.5, position: PositionCenter)
    }
   class func setcornerRadius(view : UIView, cornerradius : CGFloat)
   {
       view.layer.cornerRadius = cornerradius
       view.layer.masksToBounds = true
   }
}

