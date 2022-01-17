//
//  MyCellTableViewCell.swift
//  To DoList
//
//  Created by Wa ibra. on 10/04/1443 AH.
//

import UIKit

class MyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var txtDetail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setCell(list : ToDoList){
        txtTitle.text = list.title
        txtDetail.text = list.detail
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
