//
//  TableViewController.swift
//  HomeM3
//
//  Created by Reem Alharthi on 06/08/1443 AH.
//

import UIKit
//protocol TagsPro: AnyObject {
//    func selectedTag(_ cell: Tags)
//    func unselected(_ cell: Tags)
//
//}
class TableViewController: UITableViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    @IBOutlet weak var TagsView: UICollectionView!
    
    @IBOutlet weak var ShopArtViewC: UICollectionView!
    
    @IBOutlet weak var shopMaster: UILabel!
    
    @IBOutlet weak var viewallShop: UILabel!
    
    @IBOutlet weak var ExshangArt: UILabel!
    
    @IBOutlet weak var viewallExshan: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        TagsView.delegate = self
        TagsView.dataSource = self
        ShopArtViewC.delegate = self
        ShopArtViewC.dataSource = self
        self.navigationController?.navigationBar.prefersLargeTitles = true
        

        self.tableView.contentInset = UIEdgeInsets(top: -1, left: 0, bottom: 0, right: 0)

        ExshangArt.text=NSLocalizedString("Exchange Artwork ", comment: "")
        viewallExshan.text=NSLocalizedString("View All", comment: "")
        viewallShop.text=NSLocalizedString("View All", comment: "")
        shopMaster.text=NSLocalizedString("Shop Masterpiec", comment: "")

    }
    
           
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }

            
            var CellItem =  [
                Cell(StatePice:NSLocalizedString("Lend", comment: ""),
                     PiceImage:"Women", NamePice:NSLocalizedString("Women" ,comment: ""),DescPice:NSLocalizedString("Early sketch for women artpiece", comment: ""),
                     ArtName:NSLocalizedString("Alany", comment: ""), ProfileImage:"Alanoud",TagType:NSLocalizedString("People",comment: "")),
                
                Cell(StatePice: NSLocalizedString("wiaver", comment: ""),PiceImage:"face2", NamePice:NSLocalizedString("Face", comment: ""),DescPice:NSLocalizedString("Unfinshed face for women paint",comment: ""),ArtName:NSLocalizedString("Alany",comment: ""), ProfileImage:"Alanoud", TagType:NSLocalizedString( "People",comment: "")),
                
                Cell(StatePice:NSLocalizedString("Lend", comment: ""),PiceImage:"Sketch", NamePice:NSLocalizedString("Sketch", comment: ""),DescPice:NSLocalizedString("Face Sketch and nead to be done",comment: ""),ArtName:NSLocalizedString("Hany",comment: ""), ProfileImage:"Hany", TagType:NSLocalizedString( "People",comment: "")),
                
                Cell(StatePice:NSLocalizedString("Lend", comment: ""),PiceImage:"Artiest", NamePice:NSLocalizedString("Artiest", comment: ""),DescPice:NSLocalizedString("Piece of art and people relaxing",comment: ""),ArtName:NSLocalizedString("Ram", comment: ""),ProfileImage:"ram", TagType:NSLocalizedString("Nature", comment: "")),
                
                Cell(StatePice:NSLocalizedString("Lend", comment: ""),PiceImage:"Tower", NamePice:NSLocalizedString("Tower", comment: ""),DescPice:NSLocalizedString("Tower in Town nead to coluring",comment: ""),ArtName:NSLocalizedString("Asel", comment: ""), ProfileImage:"Alanoud", TagType:NSLocalizedString( "Building",comment: "")),
                
                Cell(StatePice:NSLocalizedString("wiaver", comment: ""),PiceImage:"Pieces", NamePice:NSLocalizedString("Pieces", comment: ""),DescPice:NSLocalizedString("Piece of art nead to complate",comment: ""),ArtName:NSLocalizedString("Laila",comment: ""), ProfileImage:"Zendaya", TagType:NSLocalizedString( "Building",comment: ""))
            ]
            
            
            var Fillterdarray : [Cell] = []
    var Tagcell = [ Tagsc(TagText:NSLocalizedString("Nature", comment: ""), tagSelected: false),
                            Tagsc(TagText:NSLocalizedString("Building", comment: ""), tagSelected: false),
                            Tagsc(TagText:NSLocalizedString("People", comment: ""), tagSelected: false),
                            Tagsc(TagText:NSLocalizedString("Music", comment: ""), tagSelected: false),
                            Tagsc(TagText:NSLocalizedString("Animals", comment: ""), tagSelected: false),
                            Tagsc(TagText:NSLocalizedString("Foods", comment: ""), tagSelected: false),
                          
            ]
            
            var isTagSelected = false
            
            var shp=[ shop(pricest:NSLocalizedString( "$2000", comment: ""), ArtImagest: "FoxDrawing", addset: "tag", shopaStr: "bag.badge.plus"),
                      shop(pricest: NSLocalizedString("$6000", comment: ""), ArtImagest: "night", addset: "tag", shopaStr: "bag.badge.plus"),
                      shop(pricest: NSLocalizedString("$3000", comment: ""), ArtImagest: "men-1", addset: "tag", shopaStr: "bag.badge.plus"),
                    
            ]
            
         
            
            

            
            func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
               // return self.arrData.count
                
                
                if collectionView == myCollectionView {
                   // repeat{
                    if isTagSelected == false {
                    return CellItem.count
                    }
                    else
                    {
                    return Fillterdarray.count
                    }
                   // }while(true)
                    
                }
               
                else if  collectionView == TagsView  {
                    
                return Tagcell.count
                  
                }
                else{
                    return shp.count
                }
                }
            
            
               func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
                    if collectionView == myCollectionView {
                    
                    if isTagSelected == false {
                    
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CardCell
                    
                    cell.StatePice.text = CellItem[indexPath.row].StatePice
                    cell.piceImage.image =  UIImage(named:CellItem[indexPath.row].PiceImage)
                    cell.piceName.text = CellItem[indexPath.row].NamePice
                    cell.piceDesc.text = CellItem[indexPath.row].DescPice
                    cell.piceDesc.font = UIFont(name: "SF Pro Display", size: 17)
                    cell.profileImage.image = UIImage(named:CellItem[indexPath.row].ProfileImage)
                    cell.ArtName.text = CellItem[indexPath.row].ArtName
                    
                    cell.layer.cornerRadius=22
                    //
                    cell.StatePice.layer.cornerRadius = 10
                    cell.StatePice.clipsToBounds = true
                    
                    
                    
                    for _ in CellItem {
                        if cell.StatePice.text == "Lend" {
                            cell.StatePice.backgroundColor = UIColor(red: 0.49, green: 0.05, blue: 0.02, alpha: 1.00)
                        } else if cell.StatePice.text == "wiaver" {
                            cell.StatePice.backgroundColor = UIColor(red: 0.18, green: 0.47, blue: 0.24, alpha: 1.00)
                            
                        }
                        else if cell.StatePice.text == "اعارة" {
                           cell.StatePice.backgroundColor = UIColor(red: 0.49, green: 0.05, blue: 0.02, alpha: 1.00)
                           
                       }
                        else if cell.StatePice.text == "تنازل" {
                           cell.StatePice.backgroundColor = UIColor(red: 0.18, green: 0.47, blue: 0.24, alpha: 1.00)
                           
                       }
                        
                    }
                    return cell
                        
                    }
                    else
                    {
                        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CardCell
                        
                        cell.StatePice.text = Fillterdarray[indexPath.row].StatePice
                        cell.piceImage.image =  UIImage(named:Fillterdarray[indexPath.row].PiceImage)
                        cell.piceName.text = Fillterdarray[indexPath.row].NamePice
                        cell.piceDesc.text = Fillterdarray[indexPath.row].DescPice
                        cell.piceDesc.font = UIFont(name: "SF Pro", size: 17)
                        cell.profileImage.image = UIImage(named:Fillterdarray[indexPath.row].ProfileImage)
                        cell.ArtName.text = Fillterdarray[indexPath.row].ArtName
                        
                        cell.layer.cornerRadius=22
                        //
                        cell.StatePice.layer.cornerRadius = 10
                        cell.StatePice.clipsToBounds = true
                        
                        
                        
                        for _ in Fillterdarray {
                            if cell.StatePice.text == "Lend" {
                                cell.StatePice.backgroundColor = UIColor(red: 0.49, green: 0.05, blue: 0.02, alpha: 1.00)
                            } else if cell.StatePice.text == "wiaver" {
                                cell.StatePice.backgroundColor = UIColor(red: 0.18, green: 0.47, blue: 0.24, alpha: 1.00)
                                
                            }
                            else if cell.StatePice.text == "اعارة" {
                               cell.StatePice.backgroundColor = UIColor(red: 0.49, green: 0.05, blue: 0.02, alpha: 1.00)
                               
                           }
                            else if cell.StatePice.text == "تنازل" {
                               cell.StatePice.backgroundColor = UIColor(red: 0.18, green: 0.47, blue: 0.24, alpha: 1.00)
                               
                           }
                        }
                        return cell
                            
                    }
                    } else if collectionView == TagsView {
                    
                    
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Mytags", for: indexPath) as! Tags
                    
                    cell.delegate = self
                    cell.tagText.setTitle(Tagcell[indexPath.row].TagText, for: .normal)
                        cell.layer.cornerRadius=3
                        
                       
                    return cell
                    
                    } else {
                    
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myshop",
                                                                  for: indexPath) as! ShopCell
                    cell.prise.text = shp[indexPath.row].pricest
                    cell.ArtShop.image = UIImage(named:shp[indexPath.row].ArtImagest)
                        cell.add.image = UIImage(systemName:shp[indexPath.row].addset)
                    cell.shopadd.image = UIImage(systemName:shp[indexPath.row].shopaStr)
                        cell.layer.cornerRadius=20
                       // cell.contentView.backgroundColor=
                        //cell.sizeToFit()
                    return cell
                }
            }
            
            
            func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                
              //  print("didSelectItemAt didSelectItemAt didSelectItemAt")
                
                var strData =  Tagcell[indexPath.row]
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Mytags", for: indexPath) as! Tags
                cell.delegate = self
            

                if strData.tagSelected {

                   
                  strData.tagSelected = true
                  isTagSelected = true
                  cell.isSelected = true
                    print("didSelectItemAt didSelectItemAt didSelectItemAt")
               } else {
                strData.tagSelected = false
                isTagSelected = false
                cell.isSelected = false
              }
               }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

           }
extension TableViewController: TagsPro {

func selectedTag(_ cell: Tags) {
 
    Fillterdarray.append(contentsOf: CellItem.filter { $0.TagType == cell.tagText.titleLabel?.text })
        isTagSelected = true
    cell.backgroundColor = UIColor(red: 0.40, green: 0.07, blue: 0.05, alpha: 1.00)
    cell.tagText.setTitleColor(UIColor.white, for: .normal)
        myCollectionView.reloadData()
}


func unselected (_ cell: Tags){
    
isTagSelected = false
    cell.backgroundColor = UIColor(red: 0.89, green: 0.87, blue: 0.85, alpha: 1.00)
  
Fillterdarray = CellItem.filter { $0.TagType != cell.tagText.titleLabel?.text }
Fillterdarray.removeAll()
    
cell.tagText.setTitleColor(UIColor.black, for: .normal)
myCollectionView.reloadData()

}
}


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
