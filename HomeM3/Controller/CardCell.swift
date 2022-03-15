//
//  cell.swift
//  HomeM3
//
//  Created by Reem Alharthi on 27/07/1443 AH.
//

import UIKit

protocol TagsPro: AnyObject {
    func selectedTag(_ cell: Tags)
    func unselected(_ cell: Tags)

}
class CardCell: UICollectionViewCell {
    
    @IBOutlet weak var ArtName: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var piceDesc: UILabel!
    @IBOutlet weak var piceName: UILabel!
    @IBOutlet weak var StatePice: UILabel!
    @IBOutlet weak var piceImage: UIImageView!
    
    
  
    }
    


class Tags: UICollectionViewCell {
    
    weak var delegate : TagsPro?
    
    @IBOutlet weak var tagText: UIButton!
    
    var isselected : Bool = false
    
    @IBAction func selectTag(_ sender: UIButton) {
  
        if !isselected {
            self.delegate?.selectedTag(self)
            isselected = true
            } else {
           self.delegate?.unselected(self)
            isselected = false
    }
}
    }
class ShopCell: UICollectionViewCell {
    
    @IBOutlet weak var prise: UILabel!
    @IBOutlet weak var ArtShop: UIImageView!
    @IBOutlet weak var add: UIImageView!
    @IBOutlet weak var shopadd: UIImageView!
    
   
    }
