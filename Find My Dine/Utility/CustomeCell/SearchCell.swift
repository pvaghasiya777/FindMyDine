//
//  SearchCell.swift
//  VPN Task
//
//  Created by Captain on 07/06/20.
//  Copyright © 2020 Captain. All rights reserved.
//

import UIKit

class SearchCell: UITableViewCell {

    @IBOutlet weak var lbl_CityName: UILabel!
    @IBOutlet weak var lbl_coutryName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
     func Display_Cell(viewController : SearchVC , indexPath : IndexPath) {
            let obj_Search = viewController.arr_Search[indexPath.section] as! CitySearchModel
            self.lbl_CityName.text = obj_Search.name!
            self.lbl_coutryName.text = obj_Search.countryName!
            self.clipsToBounds = true
        }
}
