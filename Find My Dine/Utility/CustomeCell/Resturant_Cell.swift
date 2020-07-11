//
//  Resturant_Cell.swift
//  VPN Task
//
//  Created by Captain on 07/06/20.
//  Copyright © 2020 Captain. All rights reserved.
//

import UIKit

class Resturant_Cell: UITableViewCell
{
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl_ResturantName: UILabel!
    @IBOutlet weak var lbl_Address: UILabel!
    @IBOutlet weak var lbl_Avrage_Cost: UILabel!
    @IBOutlet weak var lbl_Votes: UILabel!
    @IBOutlet weak var lbl_Rating: UILabel!
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
        Utils.setcornerRadius(view: self.lbl_Rating, cornerradius: 5)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    func Display_Cell(viewController : FindMyDineVC , indexPath : IndexPath) {
        let Obj_Result = (viewController.Arr_ResturantDetail[indexPath.section] as! NSDictionary).value(forKey: "restaurant") as! NSDictionary
        self.img.sd_setImage(with: URL(string: String(describing: Obj_Result.value(forKey: "featured_image")!)), placeholderImage: UIImage(named: "ic_Place_Holder"))
        self.lbl_ResturantName.text = String(describing: Obj_Result.value(forKey: "name")!)
        self.lbl_Address.text = String(describing: (Obj_Result.value(forKey: "location") as! NSDictionary).value(forKey: "address")!)
        self.lbl_Avrage_Cost.text = "Average Cost for 2 Person: " + String(describing: Obj_Result.value(forKey: "average_cost_for_two")!)
        self.lbl_Rating.text = String(describing: (Obj_Result.value(forKey: "user_rating") as! NSDictionary).value(forKey: "aggregate_rating")!) + "/5.00"
        let HexColor = String(describing: (Obj_Result.value(forKey: "user_rating") as! NSDictionary).value(forKey: "rating_color")!)
        self.lbl_Rating.backgroundColor = UIColor(hexString: HexColor)
        self.clipsToBounds = true
    }
}
